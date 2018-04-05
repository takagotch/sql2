DELETE FROM foo

DELETE FROM foo WHERE a = 1

DELETE FROM foo WHERE a IN (SELECT b FROM bar WHERE c = 'delete')

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

//TAUNCATETABLE



