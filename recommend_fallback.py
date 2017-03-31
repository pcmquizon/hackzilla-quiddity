import MySQLdb as mysql
import numpy as np
import sys

username = sys.argv[1]
password = sys.argv[2]
keyword = sys.argv[3]

db = mysql.connect('localhost', username, password, 'quiddity')
cursor = db.cursor()

cursor.execute('SELECT DISTINCT(category) FROM food_category')

weights = {}
tags = cursor.fetchall()
for t in tags:
  weights[t[0]] = {}

cursor.close()

for t in tags:
  cursor = db.cursor()
  cursor.execute('''SELECT user_order.id FROM user_order
  JOIN order_foods ON user_order.id = order_foods.order_id
  WHERE order_foods.food_id IN
  (SELECT food.id FROM food JOIN food_category ON food.id = food_category.food_id WHERE category = '%s');''' % (t[0]))

  orders = cursor.fetchall()
  cursor.close()

  for o in orders:
    cursor = db.cursor()
    cursor.execute('''SELECT category FROM food_category
    JOIN order_foods ON food_category.food_id = order_foods.food_id
    WHERE order_foods.order_id = %d;''' % (o[0]))

    tags2 = cursor.fetchall()
    for t2 in tags2:
      if t[0] == t2[0]: continue
      elif t2[0] not in weights[t[0]]:
        weights[t[0]][t2[0]] = 1
      else:
        weights[t[0]][t2[0]] += 1

max_k = None
max_v = None
for k,v in weights[keyword].items():
  if k == keyword: continue

  if max_v == None or v > max_v:
    max_k = k
    max_v = v

print(k)
