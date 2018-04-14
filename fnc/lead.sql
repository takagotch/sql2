//LEAD
//LAG

SELECT income, LEAD(income, 2) OVER(ORDER BY income)
  FROM staff WHERE sex='FEMALE'


---


