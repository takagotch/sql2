//~
//LIKE

SELECT a FROM foo WHERE a ~ '~^A,*'

SELECT a FROM foo WHERE a ~* '^A.*'

SELECT a FROM foo WHERE a ~ '^(A|B).*'

SELECT a FROM foo WHERE a ~ '^[ABC0].*'

SELECT a FROM foo WHERE a ~ '^[0-9].*'




