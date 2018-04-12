//WITH

WITH foobar AS (SELECT foo.a, foo.b
  FROM foo INNER JOIN bar ON foo.a = bar.a)
SELECT * FROM foobar
  WHERE a = (SELECT MIN(a) FROM foobar)
    OR a = (SELECT MAX(a) FROM foobar)


WITH foobar(aa, bb) AS (SELECT foo.a, foo.b
  FROM foo INNER JOIN bar ON foo.a = bar.a)
SELECT * FROM foobar

----



