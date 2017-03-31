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

db_username = 'root'
password = 'root'
intent = sys.argv[1]
username = sys.argv[2]
k = int(sys.argv[3])
if intent == "find-food":
	_food = sys.argv[4]
elif intent == "find-restaurant":
	_resto_id = sys.argv[4]
elif intent == "find-food-restaurant":
	_food = sys.argv[4]
	_resto = sys.argv[5]

'''
	intent 1: find-food - given food, suggest restaurant
		format: python3 knn.py find-food <username> <k> <food_name>
	intent 2: find-restaurant - given restaurant, suggest food on restaurant
		format: python3 knn.py find-restaurant <username> <k> <resto_id>
	intent 3: find-food-restaurant - given food (category/keyword) & restaurant, suggest food
		format: python3 knn.py find-food-restaurant <username> <k> <food_name> <resto_id>
	intent 4: find-meal - given nothing, suggest food based on user-based collaborative filterive
		format: python3 knn.py find-meal <username> <k>
'''

db = mysql.connect('localhost', db_username, password, 'quiddity')
cursor = db.cursor()

cursor.execute('SELECT DISTINCT(category) FROM food_category')
categories = list(map(lambda x:x[0],cursor.fetchall()))
cursor.execute('SELECT id from user')
users = list(map(lambda x:x[0],cursor.fetchall()))
cursor.execute('SELECT id from user where username = \'%s\'' % username)
user_id = list(map(lambda x:x[0],cursor.fetchall()))[0]
cursor.execute('SELECT id from restaurant')
restaurant = list(map(lambda x:x[0],cursor.fetchall()))

data = []
for user in users:
	features = []
	for category in categories:
		cursor.execute('''select count(*) from user_order join order_foods
			on user_order.id = order_foods.order_id
			join food_category on
			order_foods.food_id = food_category.food_id
			where user_order.user_id = {} and food_category.category = '{}';'''.format(user, category))
		features.append( list(map(lambda x:x[0],cursor.fetchall()))[0])
	cursor.execute('''select avg(food.price) from user_order
				join order_foods
					on user_order.id = order_foods.order_id
				join food
					on order_foods.food_id = food.id
				where user_order.user_id = %s''' % (user))
	features.append(list(map(lambda x:x[0] or 0,cursor.fetchall()))[0])
	for resto in restaurant:
		cursor.execute('''select count(*) from user_order where resto_id = {} and user_id = {}'''.format(resto,user))
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
if intent == "find-meal":
	result = {}
	for distance, user in nearest:
		cursor.execute('''SELECT order_foods.food_id, count(order_foods.food_id), food.name from user_order
							join order_foods on user_order.id = order_foods.order_id
							join food on order_foods.food_id = food.id
							where user_order.user_id = {} group by order_foods.food_id;'''.format(user) )
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
elif intent == "find-food":
	result = {}
	for distance, user in nearest:
		cursor.execute('''SELECT restaurant.id, COUNT(user_order.id) as freq, restaurant.name
							FROM restaurant
							JOIN user_order ON restaurant.id = user_order.resto_id
							WHERE user_order.user_id = {}
							AND restaurant.id IN (SELECT resto_id
							    FROM food
							    JOIN food_category ON food.id = food_category.food_id
							    WHERE category like '%{}%')
							group by restaurant.id;'''.format(user, _food) )
		for x in cursor.fetchall():
			resto, frequency, name = x
			if resto in result:
				result[resto][0] += frequency
			else:
				result[resto] = [frequency, name]

	result = list(result.items())
	result.sort(key=lambda x:-x[1][0])

	json_list = []
	for x in result:
	  resto_id = x[0]
	  freq = x[1][0]
	  name = x[1][1]

	  json_list.append({'resto_id':resto_id, 'freq':freq, 'name': name})

	print(json.dumps(json_list))
elif intent == "find-restaurant":
	result = {}
	for distance, user in nearest:
		cursor.execute('''SELECT order_foods.food_id, count(order_foods.food_id) as freq, food.name
							FROM user_order
							JOIN order_foods ON user_order.id = order_foods.order_id
							JOIN food on food.id = order_foods.food_id
							WHERE user_order.user_id = {} and user_order.resto_id = {}
							GROUP BY order_foods.food_id;'''.format(user, _resto))
		for x in cursor.fetchall():
			food, frequency, name = x
			if resto in result:
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
elif intent == "find-food-restaurant":
	result = {}
	for distance, user in nearest:
		cursor.execute('''SELECT order_foods.food_id, count(order_foods.food_id) as freq, food.name
							FROM user_order
							JOIN order_foods ON user_order.id = order_foods.order_id
							JOIN food on food.id = order_foods.food_id
							WHERE user_order.user_id = {} and user_order.resto_id = {}
                            and order_foods.food_id IN (
                                SELECT food.id FROM food
                                JOIN food_category ON food.id = food_category.food_id
                                WHERE name LIKE '%{}%' OR category LIKE '%{}%'
                            )
							GROUP BY order_foods.food_id;'''.format(user, _resto, _food, _food))
		for x in cursor.fetchall():
			food, frequency, name = x
			if resto in result:
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
else:
	print("invalid intent bro")
