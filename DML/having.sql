//HAVING
//SUM FNC

//SUM(i) > 100
SELECT x,SUM(i) FROM foo GROUP BY x HAVING SUM(i) > 100
SELECT x,SUM(i) FROM foo GROUP BY x
                                    HAVING SUM(i) > 100



