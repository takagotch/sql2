//PERCENTILE_DISC
//PERCENT_RANK
//PERCENTILE_CONT

SELECT PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY income)
  FROM staff WHERE sex = 'FEMALE'


---

