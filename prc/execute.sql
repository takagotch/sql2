//
//oracle
CREATE OR REPLACE PROCEDURE p_drop_table IS
  CURSOR cursor_name IS SELECT table_name FROM drop_table;
  table_name VARCHAR2(128);
  dynamic_sql VARCHAR2(128);
BEGIN
  OPEN cursor_name;
  LOOP
    FETCH cursor_name INTO table_name;
    EXIST WHEN cursor_name%NOTFOUND;
    dynamic_sql := 'DROP TABLE' || table_name;
    EXECUTE IMMEDIATE dynamic_sql;
  END LOOP;
  CLOSE cursor_name;
END;



CREATE PROCEDURE p_create_table(table_name VARCHAR2) IS
BEGIN
  EXECUTE IMMEDIATE 'CREATE TABLE' || table_name
  || '(a INTEGER)';
END;




//sql
CREATE PROCEDURE p_create_table(@table_name VARCHAR(128))
BEGIN
  EXEC ('CREATE TABLE' + @table_name + '(a INT)')
END




//psgl
CREATE FUNCTION f_create_table(table_name VARCHAR)
  RETURNS void AS $$
BEGIN
  EXECUTE 'CREATE TABLE' || table_name || '(a INTEGER)';
END;
$$ LANGUAGE 'plpgsql';





