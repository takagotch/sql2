CREATE INDEX idx ON foo(a)

CREATE UNIQUE INDEX idx ON foo(a)

//psgl
CREATE INDEX idx ON foo(UPPER(b))

//psgl,mysql
CREATE INDEX idx ON foo foo USING HASH (a)
CREATE INDEX idx USING HASH ON foo(a)




