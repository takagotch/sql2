//DROP TABLE drop_table_name EXECUTE

CREATE OR REPLACE PROCEDURE p_drop_table IS
  CURSOR cursor_name IS SELECT table_name FROM drop_table;
  table_name VARCHAR2(128);
  dynamic_sql VARCHAR2(128);
BEGIN
  OPEN cursor_name;
  LOOP
    FETCH cursor_name INTO table_name;
    EXIT WHEN cursor_name%NOTFOUND;
    dynamic_sql := 'DROP TABLE' || table_name;
    EXECUTE IMMEDIATE dynamic_sql;
  END LOOP;
  CLOSE cursor_name;
END;





---


