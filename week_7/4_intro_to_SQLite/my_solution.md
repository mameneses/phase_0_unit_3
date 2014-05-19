# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

C:\>sqlite3 dummy.db
SQLite version 3.8.2 2013-12-06 14:53:30
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite>

### Release 1: Insert Data

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('no
w'));
sqlite> SELECT * FROM USERS;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-15 22:54:42|2014-05-15 22:54:42
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Matias', 'Meneses', 'matiasameneses@gmail.com', DATETIME('now'), datet
ime('now'));
sqlite> select* from users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-15 22:54:42|2014-05-15 22:54:42
2|Matias|Meneses|matiasameneses@gmail.com|2014-05-15 22:56:59|2014-05-15 22:56:5
9

## Release 2: Multi-line commands

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('no
w'));
Error: UNIQUE constraint failed: users.email

sqlite> INSERT OR REPLACE INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('no
w'));
## no error ##

## Release 3: Add a column

sqlite> ALTER TABLE users
   ...> ADD nickname VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
sqlite> ALTER TABLE users
   ...> ADD nickname VARCHAR(64);

#### 
"There is an issue with adding a NOT NULL value to a column with a default value 
of NULL. The only solution i found online was to ADD the column this go in after 
and change the default, but in the SQLite Tutorial is states that columns cannot be 
renamed, removed, or change the constraints. "
####

sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  nickname VARCHAR(64));
sqlite> UPDATE users SET nickname="Mati" WHERE first_name='Matias';
sqlite> UPDATE users SET nickname="Kimchee" WHERE first_name='Kimmey';
sqlite> select * from users
   ...> ;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-15 22:54:42|2014-05-15 22:54:42|Kimchee
2|Matias|Meneses|matiasameneses@gmail.com|2014-05-15 22:56:59|2014-05-15 22:56:59|Mati

## Release 4: Change a value

sqlite> UPDATE users SET first_name="Kimmy" WHERE last_name="Lin";
sqlite> UPDATE users SET nickname="Ninja Coder" WHERE last_name="Lin";
sqlite> UPDATE users SET updated_at=DATETIME('now') WHERE last_name="Lin"
sqlite> SELECT * FROM users;
1|Kimmy|Lin|kimmy@devbootcamp.com|2014-05-15 22:54:42|2014-05-15 23:26:42|Ninja Coder
2|Matias|Meneses|matiasameneses@gmail.com|2014-05-15 22:56:59|2014-05-15 22:56:59|Mati

## Release 5: Reflect
"This exercise was very helpful to understand how to use SQL from the command prompt and 
how to manipulate and add information to tables. There were some very confusing parts due
to system errors, such as 'adding a NOT NULL value to a column with a default value 
of NULL'. I was not able to research an answer on this part so i added the column without
the 'NOT NULL' value. I was also confused on what was being asked of the last part of 
release 2 to 'track down' the error and try again. Overall i found this very helpful but 
am still a bit conufused as not all SQL syntax are the same."
