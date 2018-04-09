//ADD_MONTHS
//DATEADD

SELECT * FROM foo WHERE a + b = 10

SELECT SYSDATE + 7 FROM NULL

//ADD_MONTHS
//DATEDEFF
SELECT * FROM foo WHERE a - b = 10

SELECT SYSDATE - 7 FROM DUAL

// /
SELECT * FROM foo WHERE a * b = 10
//(1+2) *3

// *
// %
SELECT * FROM foo WHERE a / b = 10

// /
// MOD
SELECT * FROM foo WHERE a % b = 10

// &
// |
// ^ #
// ~
b = b | 8
b = b & (~ 8)
b & 8 <> 0

// |
//BITAND
SELECT * FROM foo WHERE a & b = 10

// &
// ~
SELECT * FROM foo WHERE a | b = 10

// #
// ~
SELECT * FROM foo WHERE a ^ b = 10

//^
//~
SELECT * FROM foo WHERE a # b = 10

// &
// |
SELECT * FROM foo WHERE ~a = 10

//<>
//IS NULL
SELECT name, age FROM addrlist WHERE age = 17
SELECT name, sex FROM addrlist WHERE sex = 'FEMALE'

//<
//=>
SELECT name, age FROM addrlist WHERE age > 19

//>
//<=
SELECT name, age FROM addrlist WHERE age < 30

//>
//<=
SELECT name, age FROM addrlist WHERE age >= 19

SELECT * FROM foo WHERE a COLLATE Japanese_BIN = 'abc'

//<
//>=
SELECT name, age FROM addrlist WHERE age <= 21

ALTER SESSION SET NLS_SORT=JAPANESE_M_CI;
ALTER SESSION SET NLS_COMP=LINKGUISTIC;
SELECT * FROM foo WHERE a = 'abc';

//=
//IS NULL
SELECT name, addr FROM addrlist addr <> 'Osaka'

//=
//IS NULL
SELECT name,addr FROM addrlist WHERE addr != 'Osaka'

//

