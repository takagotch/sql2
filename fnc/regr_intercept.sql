//REGR_INTERCEPT
//REGR_SLOPE
//REGR_R2

SELECT REGR_INTERCEPT(income,age) FROM staff
SELECT sex,REGR_INTERCEPT(income,age) FROM staff
  GROUP BY sex



---
