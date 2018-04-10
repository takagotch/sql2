SELECT * FROM foo WHERE a = 1 FOR UPDATE

SELECT * FROM foo, bar WHERE foo.a = bar.a
  AND bar.b = 'abc' FOR UPDATE OF foo.a

SELECT * FROM foo WHERE a = 1 FOR UPDATE NOWAIT


SELECT * FROM foo WHERE a = 1 FOR UPDATE WITH RS

SELECT * FROM foo INNER JOIN bar ON foo.a = bar.a
  WHERE bar.b = 'abc' FOR UPDATE OF foo


SELECT * FROM foo WHERE a = 1 FOR UPDATE


