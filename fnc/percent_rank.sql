//PERCENT_RANK
//DENSE_RANK
//CUME_DIST

SELECT income, PERCENT_RANK() OVER(ORDER BY income)
  FROM staff WHERE sex = 'FEMALE'




---


