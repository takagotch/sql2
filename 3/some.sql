//ANY

SELECT a FROM foo GROUP BY a
  HAVING COUNT(*) >= ALL (SELECT COUNT(*) FROM foo
  GROUP BY a)



