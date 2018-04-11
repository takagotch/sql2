//GRANT
//REVOKE

//psgl
GRANT ALL ON DATABASE dbfoo To tky
GRANT ALL ON SCHEMA schemafoo TO tky
GRANT ALL ON foo TO tky
GRANT ALL ON SEQUENCE f_foo TO tky
GRANT ALL ON FUNCTION f_foo() TO tky

//mysql
GRANT ALL PRIVILEGES ON *. * TO tky@localhost
FLUSH PRIVILEGES

GRANT ALL PRIVILEGES ON *. * TO ""@localhost
FLUSH PRIVILEGES

GRANT USAGE ON *. * TO tky
FLUSH PRIVILEGES

GRANT USAGE ON *. * TO foo IDENTIFIED BY 'newpasswd'
FLUSH PRIVILEGES

USE mysql
DELETE FROM user WHERE user = ''
FLUSH PRIVILEGES


//oracle
GRANT CREATE SESSION TO tky
GRANT ALL PRIVILEGES TO PUBLIC
GRANT ALL ON foo TO PUBLIC
//sql
GRANT CREATE TABLE TO tky
GRANT CONTROL TO PUBLIC
GRANT CONTROL ON foo TO PUBLIC
//db2
GRANT CREATETAB ON DATABASE TO tky
GRANT CREATEIN ONSHCEMA s_foo TO tky
GRANT BIND ON PACKAGE p_foo TO tky
GRANT SELECT ON TABLE t_foo TO tky
GRANT CONTROL ON INDEX i_foo TO tky
GRANT USAGE ON SEQUENCE s_foo TO PUBLIC

//
GRANT EXECUTE ON PROCEDURE p_foo TO tky
GRANT EXECUTE ON FUNCTION * TO tky




