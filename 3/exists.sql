//subquery

SELECT name, addr FROM addrlist WHERE EXISTS
  (SELECT * FROM neighbor WHERE addrlist.addr = neighbor.addr)


SELECT name, addr FROM addrlist WHERE NOT EXISTS
  (SELECT * FROM addr WHERE addrlist.addr = neighbor.addr)



