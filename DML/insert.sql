INSERT INTO foo VALUES(1,2, 'ABC')

INSERT INTO foo(a,b,c) VALUES(1, 2, 'ABC')

INSERT INTO foo(a,b,c) VALUES(1, 2, DEFAULT)

INSERT INTO foo(a,b,c) SELECT a,b,c FROM bar

INSERT INTO foo VALUES(1, 2, 'abc'),(2, 20, 'xyz')

//psgl
INSERT INTO foo VALUES(1, 'one') RETURNING a, b
INSERT INTO foo VALUES(1, 'one') RETURNING a, b INTO va, vb

//mysql
INSERT INTO foo VALUES(1, 'one')
  ON DUPLICATE KEY UPDATE b = 'one'



