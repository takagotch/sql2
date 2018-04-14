//GROUPING
//

//oracle,db2
SELECT sex,SUM(age),GROUPING(sex)
  FROM addrlist GROUP BY ROLLUP(sex)

//sql,db2
SELECT sex,SUM(age),GROUPING(sex)
  FROM addrlist GROUP BY sex WITH ROLLUP



