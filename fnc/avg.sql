//AVG
//

SELECT AVG(age) FROM addrlist

SELECT AVG(DISTINCT age) FROM addrlist

SELECT sex, AVG(age) FROM addrlist GROUP BY sex


