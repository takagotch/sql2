//GROUPING_ID
//GROUPING SETS

//oralce
SELECT month,product,SUM(sales),GROUPING_ID(month,product)
  FROM salesresult GROUP BY ROLLUP(month,product) ORDER BY month,product


