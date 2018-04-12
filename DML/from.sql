//FROM

//AS ALIAS foo t1, bar t2
SELECT * FROM foo t1,bar t2 WHERE t1.a = t2.a

//AS foo t1, bar t2
SELECT * FROM foo AS t1,bar AS t2 WHERE t1.a = t2.a

//FROM INNER JOIN LEFT JOIN RIGHT JOIN foo.a=bar.a
SELECT * FROM foo INNER JOIN bar ON foo.a = bar.a

//FROM INNER JOIN LEFT JOIN RIGHT JOIN foo.a=bar.a=more.a
SELECT * FROM (foo INNER JOIN bar ON foo.a = bar.a)
 INNER JOIN more ON foo.a = more.a

//OUTER LEFT JOIN RIGHT JOIN
SELECT * FROM foo RIGHT JOIN bar ON foo.a = bar.a
SELECT * FROM foo RIGHT OUTER JOIN bar ON foo.a = bar.a

//FULL OUTER JOIN
SELECT * FROM foo FULL OUTER JOIN bar ON foo.a = bar.a

//CROSS JOIN
SELECT * FROM foo CROSS JOIN bar

//USING
SELECT * FROM foo INNER JOIN bar USING(a)

//NATURAL JOIN
SELECT * FROM foo NATURAL JOIN bar

//CROSS APPLY
SELECT * FROM foo CROSS APPLY
 (SELECT * FROM bar WHERE foo.a = bar.a) S

//INNER JOIN LATERAL
SELECT * FROM foo INNER JOIN LATERAL
 (SELECT * FROM bar WHERE foo.a = bar.a) S ON foo.a = S.a

//OUTER APPLY LEFT JOIN LATERAL
SELECT * FROM foo OUTER APPLY
 (SELECT * FROM bar WHERE foo.a = bar.a) S

---











