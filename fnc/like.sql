//ILIKE, REGEXP

SELECT name FROM addrlist WHERE name LIKE '%Mr.'

SELECT name, age FROM addrlist
  WHERE CAST(age AS varchar) LIKE '1_'


