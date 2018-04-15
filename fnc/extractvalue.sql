//EXTRACTVALUE
//value
//XPATH

//XPath /root[1]/foo[1]/bar[1]/ oracle
SELECT EXTRACTVALUE(c, '/root[1]/foo[1]/bar[1]')
  FROM xml_sample


//XPath /root[1]/foo[1]/bar[1]/ sql
SELECT c.value('/root[1]/foo[1]/bar[1]', 'varchar(10)')
  FROM xml_sample

//XPath /root[1]/foo[1]/bar[1]/ psgl
SELECT c.XPATH('/root[1]/foo[1]/bar[1]', 'varchar(10)')
  FROM xml_sample




---

