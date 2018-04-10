//ALL
//subquery

SELECT * FROM foo WHERE i = l OR i = 2 OR i = 9

SELECT * FROM foo WHERE i IN (1,2,9)

SELECT * FROM foo WHERE i IN (SELECT j FROM bar)

SELECT name, addr FROM addrlist WHERE addr In ('osaka', 'kyoto')


