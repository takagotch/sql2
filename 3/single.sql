//ABS
//SIGN

SELECT a, +a FROM foo

//ABS
//SIGN
SELECT a,-a FROM foo

SELECT * FROM foo WHERE (a = 1) IS UNKNOWN

//COALESCE 
//NVL

SELECT name FROM addrlist WHERE age IS NULL

SELECT name, age FROM addrlist WHERE age IS NOT NULL



