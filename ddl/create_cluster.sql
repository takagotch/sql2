//CREATE CLUSTER
//CREATE TABLE
//CREATE INDEX

//oracle

//CLUSTER cls_foo
CREATE CLUSTER cls_foo (
  a NUMBER(8),
  b VARCHAR2(20)
)

// all CLUSTER COLUMN
CREATE INDEX idx_foo ON CLUSTER cls_foo

//CLUSTER tbl_foo
CREATE TABLE tbl_foo (
  a NUMBER(8),
  b VARCHAR2(20),
  c VARCHAR2(80)
) CLUSTER cls_foo (a,b)






