//TRIM
//LTRIM
//RTRIM

SELECT a,TRIM(a) FROM foo

//LEADING TRILING BOTH 
SELECT a, TRIM(LEADING '0' FROM a) FROM foo

SELECT name,TRIM('John' FROM name) FROM addrlist




