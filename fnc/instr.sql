//INSTR
//LOCATE
//POSITION
//POSSTR

SELECT a,b,INSTR(a,b) FROM foo



//oracle
SELECT a,b,INSTR(a,b,1,2) FROM foo
SELECT a,b,INSTR(a,b,-1) FROM foo
SELECT REGEXP_INSTR('〒111-1234 OsakaKitaku', '[0-9]{3}=[0-9]{4}') FROM DUAL


----


