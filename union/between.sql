// >=
// <=

SELECT name, age FROM addrlist WHERE BETWEEN 20 AND 30

SELECT point, 'A' FROM testresult WHERE point BETWEEN 80 AND 100
SELECT point, 'B' FROM testresult WHERE point BETWEEN 60 AND 79

SELECT point, evaluation FROM testresult INNER JOIN evaluation
  ON point BETWEEN min AND max



