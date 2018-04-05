//ANY, IN

SELECT name, addr FROM addrlist
  WHERE addr <> ALL(SELECT addr FROM neighbor)



