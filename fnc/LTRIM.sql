//LTRIM
//RTRIM
//TRIM

SELECT a,LTRIM(a) FROM foo
//oracle,psgl,sqlite
SELECT a, LTRIM(a, '0$') FROM foo



