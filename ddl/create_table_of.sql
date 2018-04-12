//CREATE TABLE OF
//CREATE TYPE

//oracle
CREATE TABLE table_foo OF type_foo

CREATE TABLE table_foo OF type_foo (
  no PRIMARY KEY
) OBJECT IDENTIFIER IS PRIMARY KEY


CREATE TABLE table_foo OF type_foo (
  ref_too_bar SCOPE IS ref_table
)

//db2
CREATE TABLE table_foo OF type_foo (
  REF IS OID USER GENERATED
)

CREATE TABLE table_sub_foo OF type_sub_foo UNDER table_foo
  INHERIT SELECT PRIVILEGES

CREATE TABLE table_foo OF type_foo (
  REF IS OID USER GENERATED,
  ref_to_mytype WITH OPTIONS SCOPE ref_table
)


----


