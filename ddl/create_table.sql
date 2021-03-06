//CREATE TABLE
//DROP TABLE
//ALTER TABLE


//COLUMN ab 
CREATE TABLE foo (
  a INTEGER,
  b VARCHAR(20)
)
//COLUMN a DEFAULT 0
CREATE TABLE foo (
  a INTEGER DEFAULT 0 NOT NULL,
  b VARCHAR(20) NULL
)


//NOT NULL
CREATE TABLE foo (
  a INTEGER NOT NULL
  b VARCHAR(20) NULL
)
//CHECK
CREATE TABLE foo (
  a INTEGER CHECK(a >= 0 AND a <= 9),
  b VARCHAR(20) NULL
)
//UNCHECK
CREATE TABLE foo (
  a INTEGER UNIQUE,
  b VARCHAR(20) NULL
)
//PRIMARY KEY COLUMN a
CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NULL
)
//PRIMARY KEY COLUMN ab
CREATE TABLE foo (
  a INTEGER NOT NULL,
  b VARCHAR(20) NOT NULL,
  PRIMARY KEY(a,b)
)
//FOREIGN KEY
CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL REFERENCES bar(c)
)

CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL,
  FOREIGN KEY(b) REFERENCES bar(c)
)
//ON DELETE CASCADE
CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL REFERENCES bar(c)
    ON DELETE CASCADE
)
//ON UPDATE CASCADE
CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL REFERENCES bar(c)
    ON UPDATE CASCADE
)
//CONSTRAINT
CREATE TABLE foo (
  a INTEGER NOT NULL CONSTRAINT pkey PRIMARY KEY,
  b VARCHAR(20) NULL
)

CREATE TABLE foo (
  a INTEGER NOT NULL,
  b VARCHAR(20) NULL,
  CONSTRAINT pkey PRIMARY KEY(a)
)








//psgl SERIAL
CREATE TABLE foo (
  a SERIAL,
  b VARCHAR(20)
)

CREATE TABLE foo (
  a SERIAL,
  b VARCHAR(20)
)
//mysql AUTO_INCREMENT
CREATE TABLE foo (
  a INTEGER PRIMARY KEY AUTO_INCREMENT,
  b VARCHAR(20)
)
//sqlite
CREATE TABLE foo (
  a INTEGER PRIMARY KEY AUTO_INCREMENT,
  b VARCHAR2(20)
)




//sql IDENTITY
CREATE TABLE foo (
  a INTEGER,
  b INTEGER,
  c AS a * b
)

CREATE TABLE foo (
  a INTEGER IDENTITY(1,1),
  b VARCHAR(20)
)
//db2 GENERATED ALWAYS AS IDENTITY
CREATE TABLE foo (
  a INTEGER,
  b INTEGER,
  c INTEGER GENERATED ALWAYS AS (a * b)
)

CREATE TABLE foo (
  a INTEGER GENERATED ALWAYS AS IDENTITY,
  b VARCHAR(20)
)
//oracle
CREATE TABLE foo (
  a INTEGER GENERATED ALWAYS AS IDENTITY,
  b VARCHAR2(20)
)


----














