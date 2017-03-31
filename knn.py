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
keyword = sys.argv[3]

db = mysql.connect('localhost', username, password, 'quiddity')
cursor = db.cursor()

cursor.execute('SELECT DISTINCT(category) FROM food_category')
categories = list(map(lambda x:x[0],cursor.fetchall()))
cursor.execute('SELECT id from user')
users = list(map(lambda x:x[0],cursor.fetchall()))
cursor.execute('SELECT id from restaurant')
restaurant = list(map(lambda x:x[0],cursor.fetchall()))
print("Fetching features...")
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
		if i!=j:
			t = dist(data[i],data[j])
			heappush(nearest,[-t,j]) # max queue, invert dist
			if len(nearest) > k:
				heappop(nearest)

	for i in range(len(nearest)):
		nearest[i][0] = -nearest[i][0]
	return reversed(nearest)

nearest = get_k_nearest(0,5)

result = {}
for distance, user in nearest:
	cursor.execute('''SELECT order_foods.food_id, count(order_foods.food_id) from user_order
						join order_foods on user_order.id = order_foods.order_id
						where user_order.user_id = %d group by order_foods.food_id;''' % (user) )
	for x in cursor.fetchall():
		food, frequency = x
		if food in result:
			result[food] += frequency
		else:
			result[food] = frequency

result = list(result.items())
result.sort(key=lambda x:x[1])

json_list = []
for food_id,freq in result:
  json_list.append({'food_id':food_id, 'freq':freq})

print(json.dumps(json_list))
