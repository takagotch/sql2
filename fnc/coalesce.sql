//COALESCE
//ISNULL
//NVL

//row a NULL -1
SELECT a,COALESCE(a,-1) FROM foo

//row b NULL 'unknown'
SELECT b,COALESCE(b,'unknown') FROM foo


---




