//XMLEXISTS
//exist

//oracle XPath /root[1]/foo[1]/bar[1]/
SELECT c FROM xml_sample
  WHERE XMLEXISTS('/root[1]/foo[1]/bar[1]' PASSING c)

//sql XPath /root[1]/foo[1]/bar[1]/
SELECT c FROM xml_sample
  WHERE c.exist('/root[1]/foo[1]/bar[1]')=1





---


