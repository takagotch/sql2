//GROUP BY
//SUM

SELECT product.category, SUM(result.sales) FROM result INNER JOIN product
  ON result.product = product.salescode GROUP BY product.category



