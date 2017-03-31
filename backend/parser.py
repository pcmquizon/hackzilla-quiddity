fh_in = open('menu.txt', 'r')
fh_out = open('queries.sql', 'w')
resto = set()
food = []

for l in fh_in:
    data = l.split(',')
    data[2] = float(data[2])

    data[0] = data[0].replace('\'', '\\\'')
    data[1] = data[1].replace('\'', '\\\'')
    data[3] = data[3].replace('\n', '').split('-')

    resto.add(data[1])
    food.append({'resto': data[1], 'name': data[0], 'price': data[2], 'tags': data[3]})
fh_in.close()

for r in resto:
    fh_out.write('INSERT INTO restaurant(name) VALUES("{}");\n'.format(r))

for f in food:
    query = '''
        INSERT INTO food(name, resto_id, price) VALUES("{}", (
            SELECT id FROM restaurant WHERE name = "{}"), {});\n
    '''
    fh_out.write(query.format(f['name'], f['resto'], f['price']))

    for t in f['tags']:
        query = '''
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '{}' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = '{}')), '{}');\n
        '''
        fh_out.write(query.format(f['name'], f['resto'], t))

fh_out.close()
