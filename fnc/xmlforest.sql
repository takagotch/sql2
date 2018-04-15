//XMLFOREST

SELECT XMLFOREST(address, type) FROM foo
SELECT XMLFOREST(type || address AS "addr") FROM foo

---


