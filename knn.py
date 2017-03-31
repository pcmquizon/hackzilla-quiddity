"""
	feature vector
		1. frequency distribution of tags
		2. average cost of orders
		3. frequency distribution of resto
"""

import MySQLdb as mysql
import numpy as np
import sys
import json

username = sys.argv[1]
password = sys.argv[2]
user_id = int(sys.argv[3])
k = int(sys.argv[4])

db = mysql.connect('localhost', username, '', 'quiddity')
cursor = db.cursor()

cursor.execute('SELECT DISTINCT(category) FROM food_category')
categories = list(map(lambda x:x[0],cursor.fetchall()))
cursor.execute('SELECT id from user')
users = list(map(lambda x:x[0],cursor.fetchall()))
cursor.execute('SELECT id from restaurant')
restaurant = list(map(lambda x:x[0],cursor.fetchall()))
data = []
for user in users:
	#print(user,":",end=" ")
	features = []
	for category in categories:
		cursor.execute('''select count(*) from user_order join order_foods
			on user_order.id = order_foods.order_id
			join food_category on
			order_foods.food_id = food_category.food_id
			where user_order.user_id = %d and food_category.category = '%s';''' % (user, category))
		features.append( list(map(lambda x:x[0],cursor.fetchall()))[0])
	cursor.execute('''select avg(food.price) from user_order
				join order_foods
					on user_order.id = order_foods.order_id
				join food
					on order_foods.food_id = food.id
				where user_order.user_id = %s''' % (user))
	features.append(list(map(lambda x:x[0] or 0,cursor.fetchall()))[0])
	for resto in restaurant:
		cursor.execute('''select count(*) from user_order where resto_id = %d and user_id = %d''' % (resto,user))
		features.append(list(map(lambda x:x[0],cursor.fetchall()))[0])
	data.append(features)

from math import *
from queue import *
from heapq import *

# n = NUMBER OF USERS
n = len(users)

def dist(a, b):
	ret = 0
	for i in range(len(a)):
		ret += (a[i]-b[i])**2
	return sqrt(ret)

def get_k_nearest(i, k):
	nearest = []
	for j in range(len(data)):
		if i!=j and data[j]:
			t = dist(data[i],data[j])
			heappush(nearest,[-t,users[j]]) # max queue, invert dist
			if len(nearest) > k:
				heappop(nearest)

	for i in range(len(nearest)):
		nearest[i][0] = -nearest[i][0]
	return reversed(nearest)

nearest = list(get_k_nearest(users.index(user_id),k))
result = {}
for distance, user in nearest:
	cursor.execute('''SELECT order_foods.food_id, count(order_foods.food_id), food.name from user_order
						join order_foods on user_order.id = order_foods.order_id
						join food on order_foods.food_id = food.id
						where user_order.user_id = %d group by order_foods.food_id;''' % (user) )
	for x in cursor.fetchall():
		food, frequency, name = x
		if food in result:
			result[food][0] += frequency
		else:
			result[food] = [frequency, name]

result = list(result.items())
result.sort(key=lambda x:-x[1][0])

json_list = []
for x in result:
  food_id = x[0]
  freq = x[1][0]
  name = x[1][1]

  json_list.append({'food_id':food_id, 'freq':freq, 'name': name})

print(json.dumps(json_list))
