//REVOKE
//GRANT
//psgl
REVOKE ALL ON DATABASE dbfoo FROM tky
REVOKE ALL ON foo FROM tky

//mysql
REVOKE ALL PRIVILEGES ON foo FROM tky
FLUSH PRIVILEGES

REVOKE ALL PRIVILEGES ON *. * FROM tky
FLUSH PRIVILEGES

//oracle
REVOKE CREATE SESSION FROM tky
REVOKE ALL PRIVILEGES FROM PUBLIC
REVOKE ALL ON foo FROM PUBLIC

//sql
REVOKE CREATE VIEW FROM tky
REVOKE CONTROL FROM PUBLIC
REVOKE CONTROL ON foo FROM PUBLIC

//db2
REVOKE CREATE TAB ON DATABASE FROM tky
REVOKE CREATEIN ON SCHEMA s_foo FROM tky
REVOKE BIND PAKAGE p_foo FROM tky
REVOKE SELECT ON TABLE t_foo FROM tky
REVOKE CONTROL ON INDEX i_foo FROM tky
REVOKE EXECUTE ON PROCEDURE * FROM tky RESTICT

---

