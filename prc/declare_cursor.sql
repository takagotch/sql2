//FOR

//oracle
DECLARE
  CURSOR cursor_name IS SELECT a FROM foo;
BEGIN
END;

//sql
DECLARE cursor_name CURSOR FOR SELECT a FROM foo


//mysql
CREATE PROCEDURE test_cursor() LANGUAGE SQL
BEGIN
  DECLARE cursor_name CURSOR FOR SELECT a FROM foo;
END

//psgl
CREATE OR REPLACE FUNCTION test_cursor() RETURNS void
  AS $$
DECLARE
  cursor_name CURSOR FOR SELECT a FROM foo;
BEGIN
END;
$$ LANGUAGE 'plpgsql';

---


