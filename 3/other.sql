//+
//CONCAT

SELECT name || '(' || sex || ')' FROM addrlist


//DECODE

SELECT name, CASE sex WHEN 'MALE' THEN 'male'
  WHEN 'FEMALE' THEN 'female' END FROM addrlist

SELECT name, CASE WHEN age >= 20 THEN 'adult'
  WHEN age < 20 THEN 'young' END FROM addrlist

SELECT name, CASE WHEN age IS NULL THEN 'unknown'
  ELSE CASE(age AS CHAR(2)) END FROM addrlist

//
SELECT * FROM foo WHERE a = 0 OR a = 1 AND b = 0 OR b = 1



