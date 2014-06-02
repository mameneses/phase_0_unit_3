sqlite3 national_soocer.db

CREATE TABLE national_teams (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  country_name VARCHAR(64) NOT NULL,
  coach_name  VARCHAR(64) NOT NULL,
  team_colors VARCHAR(128) UNIQUE NOT NULL,
);

CREATE TABLE soccer_players (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  age INTIGER NOT NULL,
  nation_id INTIGER NOT NULL,
);

INSERT INTO soccer_players (country_name, coach_name, team_colors) 
	VALUES ('Chile','Jorge Sampaoli','Red, White and Blue');

INSERT INTO soccer_players (first_name, last_name, age, nation_id) 
	VALUES ('Alexis','Sanchez',25, 1),
		   ('Victor','Vidal',27, 1),
		   ('Hugo','Vadivia',25, 1),
		   ('Edgar','Salon',23, 1),
		   ('Tomas','Herrera',28, 1),
		   ('Claudio','Bravo',27, 1),
		   ('Kenny','Lido',21, 1),
		   ('Matias','Meneses',25, 1),
		   ('Pedro','Sito',22, 1);