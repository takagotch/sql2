//UPDATE

//UPDATE SET
UPDATE foo SET a = 1
//ROW UPDATE
UPDATE foo SET a = 1 WHERE b = 2
//MULTI COLUMN
UPDATE foo SET a = 1,b = 2 WHERE c = 2
//SUBQUERY UPDATE
UPDATE foo SET a = (SELECT MAX(b) FROM bar) WHERE c = 1

//FROM UPDATE
UPDATE foo SET a = bar.c FROM bar
  WHERE foo.b = bar.b

//RETURNING,OUTPUT
UPDATE foo SET a=2, b='two' WHERE a=1 RETURNING a, b
UPDATE foo SET a=2, b='two' WHERE a=1 RETURNING a, b
  INTO va, vb

//TOP LIMIT
UPDATE TOP(3) TOP SET a = 1
UPDATE foo SET c = 1 LIMIT 3
UPDATE foo sET c = 1 ORDER BY a LIMIT 3


//psgl
UPDATE foo SET a = bar.c FROM bar
 WHERE foo.b = bar.b
UPDATE foo SET a=2, b='two' WHERE a=1 RETURNING a, b
UPDATE foo SET a=2, b='two' WHERE a=1 RETURNING a, b
  INTO va, vb

//mysql
UPDATE TOP(3) foo SET a = 1
UPDATE foo SET c = 1 LIMIT 3
UPDATE foo SET c = 1 ORDER BY a LIMIT 3


//sql
DECLARE @table_var table(olda integer, newa integer,
  b varchar(20))
UPDATE foo SET a=2, b='two' OUTPUT DELETED.a,
  INSERTED.a, DELETED.b INTO @table_var WHERE a=1
----








