//LTRIM, RTRIM

SELECT a,TRIM(a) FROM foo

SELECT a, TRIM(LEADING '0' FROM a) FROM foo

SELECT name,TRIM('John' FROM name) FROM addrlist




