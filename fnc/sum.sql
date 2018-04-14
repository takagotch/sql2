//SUM
//SUM OVER

//
SELECT SUM(age) FROM addrlist
//NULL ALL DISTINCT


//DISTINCT only
SELECT SUM(DISTINCT age) FROM addrlist

//GROUP BY
SELECT sex, SUM(age) FROM addrlist GROUP BY sex

//GROUP BY
SELECT products, category, SUM(total, sales) FROM total INNER JOIN products
  ON product.productcode= product.productcode GROUP BY product.category


