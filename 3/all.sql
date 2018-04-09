//ANY
//IN

SELECT name, addr FROM addr
  WHERE addr <> ALL(SELECT addr FROM neighbor)


