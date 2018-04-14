//TO_CHAR
//CAST
//CONVERT




//oracle
SELECT a,TO_CHAR(a) FROM foo
SELECT a,TO_CHAR(a) FROM foo
SELECT a,TO_CHAR(a, 'YYYY MM/DD') FROM foo
SELECT a,TO_CHAR(a, 'YYYY DDTH MON') FROM foo
//db2
SELECT TO_CHAR(a, 'YYYY/MM/DD HH24:MI:SS') FROM foo

//psgl
SELECT a,TO_CHAR(a,'999,999') FROM foo
SELECT a,TO_CHAR(a,'YYYY MM/DD') FROM foo
/*psgl DATE
'CC'
'Y''YY''YYY''YYYY'
'Q'
'MM'
'MON''Mon''mon'
'MONTH''Month''month'
'RM''rm'
'DDD'
'DD'
'WW'
'W'
'D'
'DY''Dy''dy'
'DAY''Day''day'
'AM'A.M.''PM''P.M.'
'HH24'
'HH''HH12'
'MI'
'SS'
'SSSS'
FM
FX
TH
*/




---




