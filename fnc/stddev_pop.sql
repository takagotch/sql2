//STDDEV, STDEV

SELECT STDDEV_POP(age) FROM addrlist

SELECT sex, STDDEV_POP(age) FROM addrlist GROUP BY sex


