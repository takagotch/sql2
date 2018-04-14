//STDDEV                psgl,oracle,mysql
//STDEV                 sql,acess
//STDDEV_POP, STDEVP


SELECT STDDEV(age) FROM addrlist

SELECT sex, STDDEV(age) FROM addrlist GROUP BY sex


