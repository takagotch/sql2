//>=, <=

SELECT name, age FROM addrlist WHERE age BETWEEN 20 AND 30


SELECT point, 'A' FROM result WHERE point BETWEEN 80 AND 100
SELECT point, 'B' FROM result WHERE point BETWEEN 60 AND 79

SELECT point, evaluation FROM result INNER JOIN evaluation
  ON point BETWEEN min AND max


