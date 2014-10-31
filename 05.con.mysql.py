#!/usr/bin/python
import MySQLdb

# Open database connection
db = MySQLdb.connect("localhost","root","123456","subingleslyrics" )
# prepare cursos object using cursor()
cursor =db.cursor()
# execute SQL
cursor.execute('SELECT VERSION()')
# fetch  a single row using fetchone()
data = cursor.fetchone()

print "Data MYSQL version : %s " % data