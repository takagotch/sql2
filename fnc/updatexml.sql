//UPDATEXML
//modify

//oracle,mysql XPath /root[1]/foo[1]/bar[1]/
SELECT UPDATEXML(c, '/root[1]/foo[1]/bar[1]/', 'replace')
  FROM xml_sample

//sql XPath /root[1]/foo[1]/bar[1]/
SELECT xml_sample SET c.modify('replace value of
  (/root/foo/bar/text())[1] with "replace"')






----



