//CREATE TABLE
//CREATE INDEX

CREATE CLUSTER cls_foo (
  a NUMBER(8),
  b VARCHAR2(20)
)


CREATE INDEX idx_foo ON CLUSTER cls_foo


CREATE TABLE tbl_foo (
  a NUMBER(8),
  b VARCHAR2(20),
  c VARCHAR2(80)
) CLUSTER cls_foo (a,b)





