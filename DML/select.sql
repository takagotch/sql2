//SELECT

//row & column
SELECT * FROM foo

//WHERE rows
SELECT * FROM foo WHERE a = 1

//FROM
SELECT * FROM foo,bar WHERE foo.a = bar.a

//GROUP BY
SELECT SUM(b) FROM foo GROUP BY a

//ORDER BY
SELECT * FROM foo ORDER BY a

//SELECT
//DISTINCT ALL
SELECT DISTINCT a FROM foo

//ALIAS SELECT
SELECT a * c AS mulval,a - c AS subval FROM foo

//AS
SELECT a * c mulval,a -c subval FROM foo

//=
SELECT mulval = a * c, subval = a - c FROM foo

//TOP n
SELECT TOP 3 * FROM foo


//mysql
SELECT * FROM foo
SELECT * FROM foo
SELECT * FROM foo,bar WHERE foo.a = bar.a
SELECT SUM(b) FROM foo GROUP BY a
SELECT * FROM foo ORDER BY a
SELECT DISTINCT a FROM foo
SELECT a * c mulval,a - c AS subval FROM foo
SELECT a * c mulval,a - c subval FROM foo
//psgl
SELECT * FROM foo
SELECT * FROM foo WHERE a = 1
SELECT * FROM foo,bar WHERE foo.a = bar.a
SELECT SUM(b) FROM foo GROUP BY a
SELECT * FROM foo ORDER BY a
SELECT DISTINCT a FROM foo
SELECT a * c mulval,a - c AS subval FROM foo
SELECT a * c mulval,a - c subval FROM foo

----




