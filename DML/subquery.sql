SELECT * FROM foo WHERE a = (SELECT MAX(b) FROM bar)

maxvalue = SELECT MAX(b) FROM bar
SELECT * FROM foo WHERE a = maxvalue

SELECT * FROM foo WHERE a = (SELECT MAX(b) FROM bar WHERE bar.c = foo.c)

SELECT * FROM foo WHERE EXISTS (SELECT * FROM bar WHERE bar.a = foo.a)

SELECT (SELECT COUNT(*) FROM foo), (SELECT COUNT(*) FROM bar)

SELECT * FROM (SELECT a,b FROM bar) AS SUBQ


