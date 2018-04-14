//RANK
//DENSE_RANK

SELECT income, RANK() OVER(ORDER BY income DESC) FROM staff
  ORDER BY income DESC



---

