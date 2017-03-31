import MySQLdb as mysql
import numpy as np
import sys

def create_vectors():
  username = sys.argv[1]
  password = sys.argv[2]
  keyword = sys.argv[3]

  db = mysql.connect('localhost', username, password, 'quiddity')
  food_cursor = db.cursor()

  query = '''
    SELECT user_id, count()
    SELECT id FROM food WHERE name LIKE %s OR id IN (
      SELECT food_id FROM food_category WHERE category LIKE %s
    );
  '''

create_vectors()
