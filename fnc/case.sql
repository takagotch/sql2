//DECODE

SELECT name, CASE sex WHEN 'MALE' THEN 'male'
  WHEN 'FEMALE' THEN 'female' END FROM addrlist

SELECT name, CASE WHEN age >= 20 THEN 'adult'
  WHEN age < 20 THEN 'child' END FROM addrlist

SELECT name, CASE WHEN age IS NULL THEN 'unknown'
  ELSE CAST(age AS CHAR(2)) END FROM addrlist



