//CREATE TYPE
//CREATE TYPE BODY
//DROP TYPE

//oracle
CREATE OR REPLACE TYPE mytype AS OBJECT (
  atr1 NUMBER,
  atr2 VARCHAR2(20),
  MEMBER FUNCTION get_atr1 RETURN NUMBER,
  MEMBER FUNCTION get_atr2 RETURN VARCHAR2
) NOT FINAL


CREATE OR REPLACE TYPE mysubtype UNDER mytype (
  atr3 NUMBER,
  MEMBER FUNCTION get_atr3 RETURN NUMBER
) NOT FINAL


CREATE OR REPLACE TYPE mytype2 AS OBJECT (
  atr1 NUMBER,
  atr2 NUMBER,
  STATIC FUNCTION make_mytype2(atr1 NUMBER,
    atr2 NUMBER)
    RETURN mytype2
) NOT FINAL


CREATE TABLE mytable OF mytype
OBJECT IDENTIFIER IS SYSTEM GENERATED

INSERT INTO mytable VALUES(mysubtype(20, 'xyz', 900))


SELECT * FROM mytable

SELECT * FROM mytable t
  WHERE VALUE(t) IS OF TYPE (ONLY mytype)

SELECT atr1,atr2,TREAT(VALUE(t) AS mysubtype).atr3
  FROM mytable t


CREATE TYPE reftype AS OBJECT (
  ref_to_mytype REF mytype,
  name VARCHAR2(20)
)

CREATE TABLE reftest OF reftype (
  ref_to_mytype SCOPE IS mytable
)
OBJECT INDENTIFIR IS SYSTEM GENERATED


INSERT INTO reftest SELECT REF(t), 'ref test'
  FROM mytable t WHERE atr1=10

SELECT DEREF(ref_to_mytype).atr1,
  DEREF(ref_to_mytype).atr2,
  name FROM reftest




//db2

CREATE TYPE mytype AS (
  a INTEGER,
  b VARCHAR(20)
)  MODE DB2SQL


CREATE TYPE mysubtype UNDER mytype AS (
  c INTEGER
) MODE DB2SQL


CREATE TABLE mytable OF mytype (
  REF IS OLD USER GENERATED
)

CREATE TABLE mysubtable OF mysubtype UNDER mytable
  INHERIT SELECT PRIVILEGES

INSERT INTO mytable VALUES(mytype('1'), 10, 'abc')

INSERT INTO mysubtable
VALUES(mysubtype('2'),20,'xyz',900)

SELECT * FROM mytable

SELECT * FROM ONLY(mytable)

SELECT * FROM OUTER(mytable)

SELECT TYPE reftype AS ( 
  ref_to_mytype REF(mytype),
  name VARCHAR(20)
) MODE DB2SQL


CREATE TABLE reftest OF reftype(
  REF IS OID USER GENERATED,
  ref_to_mytype WITH OPTIONS SCOPE mytable
)

INSERT INTO reftest VALUES(reftype('1'),
  mytype('1'), 'ref test')

SELECT ref_to_mytype->a, ref_to_mytype->b, name
FROM reftest

//sql
CREATE TYPE mytype AS TABLE (
  atr1 INTEGER,
  atr2 VARCHAR(20)
)

CREATE PROCEDURE p_mytype ( @p mytype READONLY ) AS
  BEGIN
    INSERT INTO foo SELECT * FROM @p
  END

DECLARE @var_mytype mytype
INSERT INTO @var_mytype VALUES(1, 'one')










//psgl
CREATE TYPE mytype AS (
  atr1 INTEGER,
  atr2 VARCHAR(20)
)


CREATE TABLE foo (
  a mytype,
  b integer
)
INSERT INTO foo VALUES(ROW(1, 'one'), 0)
SELECT (a).atr1 FROM foo

CREATE TYPE myenumtype AS ENUM('green', 'yellow', 'red')












---











