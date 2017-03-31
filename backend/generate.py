import MySQLdb;
import random;
import re;

db = MySQLdb.connect(host='localhost',    # your host, usually localhost
                     user='root',         # your username
                     passwd='',  # your password
                     db='quiddity');        # name of the data base

# you must create a Cursor object. It will let
#  you execute all the queries you need
cur = db.cursor();

# Use all the SQL you like
cur.execute('SELECT * FROM user');

# print all the first cell of all the rows
users = [];
for row in cur.fetchall():
    users.append(row[1]);

cur.execute('SELECT * FROM restaurant');

restaurants = [];
for row in cur.fetchall():
    restaurants.append(row[1]);

# Jollibee goi
cur.execute('SELECT name FROM food WHERE resto_id = 6');

julibi_fud = [];
for row in cur.fetchall():
    julibi_fud.append(row[0]);

for k in range(0, 2):
    user = users.pop(0);
    for i in range(0, 400):
        rnd = random.randint(0, len(julibi_fud) - 1);
        print('\nINSERT INTO user_order(user_id, resto_id, order_date) VALUES ((SELECT id FROM user WHERE username = \'' + user + '\'), (SELECT id FROM restaurant WHERE name = \'Jollibee\'), CURRENT_TIMESTAMP);');
        print('INSERT INTO order_foods VALUES (LAST_INSERT_ID(), (SELECT id FROM food WHERE name = \'' + re.escape(julibi_fud[rnd]) + '\' LIMIT 1), 1);');

# KFC goi
cur.execute('SELECT name FROM food WHERE resto_id = 8');

kfc_fud = [];
for row in cur.fetchall():
    kfc_fud.append(row[0]);

for k in range(0, 2):
    user = users.pop(0);
    for i in range(0, 600):
        rnd = random.randint(0, len(kfc_fud) - 1);
        print('INSERT INTO user_order(user_id, resto_id, order_date) VALUES ((SELECT id FROM user WHERE username = \'' + user + '\'), (SELECT id FROM restaurant WHERE name = \'Jollibee\'), CURRENT_TIMESTAMP);');
        print('INSERT INTO order_foods VALUES (LAST_INSERT_ID(), (SELECT id FROM food WHERE name = \'' + re.escape(kfc_fud[rnd]) + '\' LIMIT 1), 1);');

# Mcdo goi
cur.execute('SELECT name FROM food WHERE resto_id = 4');

mc_fud = [];
for row in cur.fetchall():
    mc_fud.append(row[0]);

for k in range(0, 2):
    user = users.pop(0);
    for i in range(0, 600):
        rnd = random.randint(0, len(mc_fud) - 1);
        print('INSERT INTO user_order(user_id, resto_id, order_date) VALUES ((SELECT id FROM user WHERE username = \'' + user + '\'), (SELECT id FROM restaurant WHERE name = \'Jollibee\'), CURRENT_TIMESTAMP);');
        print('INSERT INTO order_foods VALUES (LAST_INSERT_ID(), (SELECT id FROM food WHERE name = \'' + re.escape(mc_fud[rnd]) + '\' LIMIT 1), 1);');

# Chicken goi
cur.execute('SELECT name FROM food WHERE name LIKE \'%chicken%\'');

chick_fud = [];
for row in cur.fetchall():
    chick_fud.append(row[0]);

for k in range(0, 3):
    user = users.pop(0);
    for i in range(0, 600):
        rnd = random.randint(0, len(chick_fud) - 1);
        print('INSERT INTO user_order(user_id, resto_id, order_date) VALUES ((SELECT id FROM user WHERE username = \'' + user + '\'), (SELECT id FROM restaurant WHERE name = \'Jollibee\'), CURRENT_TIMESTAMP);');
        print('INSERT INTO order_foods VALUES (LAST_INSERT_ID(), (SELECT id FROM food WHERE name = \'' + re.escape(chick_fud[rnd]) + '\' LIMIT 1), 1);');

# Burger goi
cur.execute('SELECT name FROM food WHERE name LIKE \'%burger%\'');

burg_fud = [];
for row in cur.fetchall():
    burg_fud.append(row[0]);

for k in range(0, 3):
    user = users.pop(0);
    for i in range(0, 600):
        rnd = random.randint(0, len(burg_fud) - 1);
        print('INSERT INTO user_order(user_id, resto_id, order_date) VALUES ((SELECT id FROM user WHERE username = \'' + user + '\'), (SELECT id FROM restaurant WHERE name = \'Jollibee\'), CURRENT_TIMESTAMP);');
        print('INSERT INTO order_foods VALUES (LAST_INSERT_ID(), (SELECT id FROM food WHERE name = \'' + re.escape(burg_fud[rnd]) + '\' LIMIT 1), 1);');

# Pizza goi
cur.execute('SELECT name FROM food WHERE name LIKE \'%pizza%\' OR resto_id = 5');

pizz_fud = [];
for row in cur.fetchall():
    pizz_fud.append(row[0]);

for k in range(0, 3):
    user = users.pop(0);
    for i in range(0, 600):
        rnd = random.randint(0, len(pizz_fud) - 1);
        print('INSERT INTO user_order(user_id, resto_id, order_date) VALUES ((SELECT id FROM user WHERE username = \'' + user + '\'), (SELECT id FROM restaurant WHERE name = \'Jollibee\'), CURRENT_TIMESTAMP);');
        print('INSERT INTO order_foods VALUES (LAST_INSERT_ID(), (SELECT id FROM food WHERE name = \'' + re.escape(pizz_fud[rnd]) + '\' LIMIT 1), 1);');

db.close();