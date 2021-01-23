CREATE TABLE imagens (
	image_id INTEGER PRIMARY KEY AUTOINCREMENT,
	image_path TEXT, 
	creation_date INTEGER,
	user_id INTEGER
	);
	
CREATE TABLE comments (
	comment_id INTEGER PRIMARY KEY AUTOINCREMENT,
	comment_content TEXT,
	image_id INTEGER
	);
	
CREATE TABLE users (
	user_id INTEGER PRIMARY KEY AUTOINCREMENT,
	username TEXT
	);
	
CREATE TABLE palavrachave (
	palavrachave_id INTEGER PRIMARY KEY AUTOINCREMENT,
	palavra TEXT
	);
	
CREATE TABLE imagenspalavrachave (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	palavrachave_id INTEGER,
	imagem_id INTEGER
	);
