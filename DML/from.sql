SELECT * FROM foo t1,bar t2 WHERE t1.a = t2.a

SELECT * FROM foo AS t1,bar AS t2 WHERE t1.a = t2.a

SELECT * FROM foo INNER JOIN bar ON foo.a = bar.a

SELECT * FROM (foo INNER JOIN bar ON foo.a = bar.a)
 INNER JOIN more ON foo.a = more.a

SELECT * FROM foo RIGHT JOIN bar ON foo.a = bar.a
SELECT * FROM foo RIGHT OUTER JOIN bar ON foo.a = bar.a

SELECT * FROM foo FULL OUTER JOIN bar ON foo.a = bar.a

SELECT * FROM foo CROSS JOIN bar

SELECT * FROM foo INNER JOIN bar USING(a)

SELECT * FROM foo NATURAL JOIN bar

SELECT * FROM foo CROSS APPLY
 (SELECT * FROM bar WHERE foo.a = bar.a) S

SELECT * FROM foo INNER JOIN LATERAL
 (SELECT * FROM bar WHERE foo.a = bar.a) S ON foo.a = S.a

SELECT * FROM foo OUTER APPLY
 (SELECT * FROM bar WHERE foo.a = bar.a) S


