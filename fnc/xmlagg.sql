//XMLAGG
//oracle,psgl


SELECT XMLAGG(XMLELEMENT(NAME addr, address))
  FROM address


SELECT XMLAGG(XMLELEMENT(NAME addr, address))
  FROM address GROUP BY type







----






