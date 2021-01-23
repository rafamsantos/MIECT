import sqlite3 

conn = sqlite3.connect('database.db')
c=conn.cursor()


c.execute('''CREATE TABLE images (
	id text,
	author text,
	date text,
	location text,
	keywords text,
	votes_up integer,
	votes_down integer
)''')
conn.commit()
conn.close()
