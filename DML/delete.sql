//DELETE
//TRUNCATE TABLE

//DELTE ALL
DELETE FROM foo

//COLUMN 
DELETE FROM foo WHERE a = 1

//SUBQUERY
DELETE FROM foo WHERE a IN (SELECT b FROM bar WHERE c = 'delete')

//USING
DELETE FROM foo USING bar
  WHERE foo.a = bar.b AND bar.c = 'deleted'
DELETE FROM foo USING foo, bar
  WHERE foo.a = bar.b AND bar.c = 'deleted'

//RETURNING,OUTPUT
DELETE FROM foo WHERE a=2 RETURNING a, b
DELETE FROM foo WHERE a=2 RETURNING a, b
  INTO va, vb

//TOP,LIMIT
DELETE FROM foo LIMIT 3
DELETE FROM foo ORDER BY a LIMIT 3


//psgl
DELETE FROM foo USING bar
 WHERE foo.a = bar.b AND bar.c = 'deleted'
//mysql
DELETE FROM foo USING foo, bar
 WHERE foo.a = bar.b AND bar.c = 'deleted'

//psgl
DELETE FROM foo WHERE a=2 RETURNING a, b
DELETE FROM foo WHERE a=2 RETURNING a, b INTO va, vb

//mysql
DELETE TOP(3) FROM foo
DELETE FROM foo LIMIT 3
DELETE FROM foo ORDER BY a LIMIT 3

//sql
DELETE FROM foo FROM bar
  WHERE foo.a = bar.b AND bar.c = 'deleted'
DECLARE @table_var table(a integer, b varchar(20))
DECLETE FROM foo OUPUT DELETED.a, DELETED.b
  INTO @table_var WHERE a=2
DELETE TOP(3) FROM foo

------










