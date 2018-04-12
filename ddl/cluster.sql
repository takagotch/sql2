//CLUSTER
//CREATE INDEX

//psgl

CREATE TABLE foo (
  a INTEGER,
  b VARCHAR(20)
)


CREATE INDEX idx_foo ON foo(a)

CLUSTER foo USING idx_foo
CLUSTER idx_foo ON foo


---




