CREATE TABLE foo (
  a INTEGER,
  b VARCHAR(20)
)

CREATE TABLE foo (
  a INTEGER DEFAULT 0 NOT NULL,
  b VARCHAR(20) NULL
)



CREATE TABLE foo (
  a INTEGER NOT NULL
  b VARCHAR(20) NULL
)

CREATE TABLE foo (
  a INTEGER CHECK(a >= 0 AND a <= 9),
  b VARCHAR(20) NULL
)

CREATE TABLE foo (
  a INTEGER UNIQUE,
  b VARCHAR(20) NULL
)

CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NULL
)

CREATE TABLE foo (
  a INTEGER NOT NULL,
  b VARCHAR(20) NOT NULL,
  PRIMARY KEY(a,b)
)

CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL REFERENCES bar(c)
)

CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL,
  FOREIGN KEY(b) REFERENCES bar(c)
)

CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL REFERENCES bar(c)
    ON DELETE CASCADE
)

CREATE TABLE foo (
  a INTEGER NOT NULL PRIMARY KEY,
  b VARCHAR(20) NOT NULL REFERENCES bar(c)
    ON UPDATE CASCADE
)

CREATE TABLE foo (
  a INTEGER NOT NULL CONSTRAINT pkey PRIMARY KEY,
  b VARCHAR(20) NULL
)

CREATE TABLE foo (
  a INTEGER NOT NULL,
  b VARCHAR(20) NULL,
  CONSTRAINT pkey PRIMARY KEY(a)
)

//psgl
CREATE TABLE foo (
  a SERIAL,
  b VARCHAR(20)
)

//mysql
CREATE TABLE foo (
  a INTEGER PRIMARY KEY AUTO_INCREMENT,
  b VARCHAR(20)
)


//sqlite
CREATE TABLE foo (
  a INTEGER PRIMARY KEY AUTO_INCREMENT,
  b VARCHAR2(20)
)




