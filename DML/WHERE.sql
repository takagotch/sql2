//WHERE

//SELECT WHERE
SELECT * FROM foo WHERE a = 1
SELECT * FROM products WHERE price = 100


//
//foo.a = bar.a
SELECT * FROM foo,bar2 WHERE foo.a = bar2.a
SELECT * FROM foo,bar2 WHERE foo.a = bar2.a
SELECT * FROM foo,bar2 WHERE foo.a = bar2.a



//FROM foo.a=bar.a
SELECT * FROM foo INNER JOIN bar ON foo.a = bar.a

//oracle
SELECT * FROM foo LEFT JOIN bar ON foo.a = bar.a
//sql
SELECT * FROM foo,bar WHERE foo.a *= bar.a
SELECT * FROM foo,bar WHERE foo.a *= bar.a
SELECT * FROM foo,bar WHERE foo.a = bar.a(+)

//FROM LEFT JOIN
SELECT * FROM foo LEFT JOIN bar ON foo.a = bar.a




