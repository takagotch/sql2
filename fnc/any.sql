//ALL, SOME

SELECT name, addr FROM addrlist
  WHERE addr = ANY (SELECT addr FROM neighbor)


