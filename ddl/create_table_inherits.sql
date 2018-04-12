//CREATE TABLE INHERITS
//psgl

CREATE TABLE mytable (
  a INTEGER,
  b VARCHAR(20)
)


CREATE TABLE mysubtable (
  c INTEGER
) INTEGER (mytable)


INSERT INTO mytable VALUES(10,'abc')
INSERT INTO mysubtable VALUES(20,'xyz',900)

SELECT * FROM mytable

SELECT * FROM ONLY mytable

SELECT tableoid, a, b FROM mytable




