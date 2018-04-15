//XMLQUERY
//query

//oracle
SELECT XMLQUERY('for $i in $c/root/foo where $i/@attr=2
  return $i' PASSING c AS "c" RETURNING CONTENT)
  FROM xml_sample


//sql
SELECT c.query('for $i in /root/foo where $i/@attr=2
  return $i') FROM xml_sample




---



