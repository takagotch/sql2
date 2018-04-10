//oracle
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


