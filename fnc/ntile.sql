//NTILE
//PERCENT_RANK

SELECT income, NTILE(2) OVER(ORDER BY income)
  FROM staff WHERE sex = 'FEMALE'



---



