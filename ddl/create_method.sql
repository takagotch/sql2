//db2
//CREATE TYPE

CREATE TYPE mytype AS (
  a INTEGER,
  b VARCHAR(20)
) MODE DB2SQL
METHOD get_a() RETURNS INTEGER LANGUAGE SQL,
METHOD get_b() RETURNS VARCHAR(20) LANGUAGE SQL


CREATE METHOD get_a() RETURNS INTEGER FOR mytype
  RETURN SELF..a;
CREATE METHOD get_b() RETURNS VARCHAR(20) FOR mytype
  RETURN SELF..b;

CREATE TABLE test_mytype (
  a mytype
)

INSERT INTO test_mytype VALUES(mytype()..a(0)..b('test'))

SELECT a..get_a(), a..get_b() FROM test_mytype

//mutator

---





