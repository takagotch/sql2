//GROUPING

//oracle
GROUP BY ROLLUP(month,product)
GROUP BY CUBE(month,product)
GROUPING SETS((month,product))


ROLLUP(month,product)...GROUPING SETS((month,product),(month),())
CUBE(month,product).....GROUPING SETS((month,product),(month),(product),())

//sql
GROUP BY month,product WITH ROLLUP
GROUP BY month,product WITH CUBE

/mysql
//ROLLUP
SELECT month,product SUM(sales) FROM salesresult GROUP BY
  ROLLUP(month,product) ORDER BY month,product
//CUBE
SELECT month,product,SUM(sales) FROM salesresult GROUP BY
  CUBE(month,product) ORDER BY month,product
//GROUPING SETS
SELECT month,product,SUM(sales) FROM salesresult GROUP BY 
  GROUPING SETS((month,product),()) ORDER BY month,product



---




