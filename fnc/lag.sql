//LAG
//LEAD

SELECT income, LAG(income) OVER(ORDER BY income)
  FROM staff WHERE sex='FEMALE'


---


