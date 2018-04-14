//NULLIF
//COALESCE
//

//row (a,b) NULL
SELECT a,b,NULLIF(a,b) FROM foo


//row a,'unknown'
SELECT a,NULLIF(a,'unknown') FROM foo

---






