import MySQLdb as mysql
import random
import sys

db = mysql.connect('localhost', 'root', 'root', 'quiddity')

cursor = db.cursor()
cursor.execute('SELECT DISTINCT id FROM user;')
users = cursor.fetchall()
cursor.close()

cursor = db.cursor()
cursor.execute('SELECT DISTINCT id FROM restaurant;')
restaurants = cursor.fetchall()
cursor.close()

for i in range(int(sys.argv[1])):
    user = random.choice(users)[0]
    resto = random.choice(restaurants)[0]

    cursor = db.cursor()
    cursor.execute('INSERT INTO user_order(user_id, resto_id, order_date) VALUES({},{},NOW());\n'.format(user, resto))
    db.commit()
    cursor.close()

    cursor = db.cursor()
    cursor.execute('SELECT DISTINCT id FROM food WHERE resto_id = {};'.format(resto))
    foods = cursor.fetchall()
    cursor.close()

    cursor = db.cursor()
    cursor.execute('SELECT LAST_INSERT_ID();')
    order_id = cursor.fetchone()
    print(order_id)
    cursor.close()

    for f in random.sample(foods, random.randint(1,5)):
        cursor = db.cursor()
        cursor.execute('INSERT INTO order_foods VALUES({},{},{});\n'.format(order_id[0], f[0], random.randint(1,3)))
        db.commit()
        cursor.close()
