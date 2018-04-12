//UPDATE


UPDATE foo SET a = 1

UPDATE foo SET a = 1 WHERE b = 2

UPDATE foo SET a = 1,b = 2 WHERE c = 2

UPDATE foo SET a = (SELECT MAX(b) FROM bar) WHERE c = 1

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

