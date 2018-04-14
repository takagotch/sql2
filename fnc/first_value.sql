//FIRST_VALUE
//LAST_VALUE
//SUM OVER

SELECT income, FIRST_VALUE(income) OVER(ORDER BY income)
  FROM staff ORDER BY income DESC


----


:
