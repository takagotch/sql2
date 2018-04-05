//ALL, subquery

SELECT * FROM foo WHERE i = 1 OR i = 2 OR i = 9

SELECT * FROM foo WHERE i IN (1, 2, 9)

SELECT * FROM foo WHERE i IN (SELECT j FROM bar)

SELECT name, addr FROM addrlist WHERE addrlist IN ('osaka', 'kyoto')


