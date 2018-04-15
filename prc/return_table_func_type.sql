//RETURN table_func_type
//

//oracle table_func_rec table_func_type
CREATE TYPE table_func_rec IS OBJECT
  ( a NUMBER, b VARCHAR2(20) )
CREATE TYPE table_func_type IS TABLE OF table_func_rec

//oracle RETURN table_func_type table_func
CREATE FUNCTION table_func ( n NUMBER )
  RETURN table_func_type IS
  return_value table_func_type;
BEGIN
  return_value := table_type(
    table_func_rec(NULL, NULL));
  return_value.EXTEND(n - 1);
  FOR i IN 1..n LOOP
    return_value(i) := table_func_rec(i, 'i=' || i);
  END LOOP;
  RETURN return_value; -- table_func_type
END;

//oracle table_func FROM
SELECT * FROM TABLE(table_func(2))

//PIPELINED PIPE CREATE FUNCTION RETURN oracle
CREATE FUNCTION table_func_pipe (n NUMBER)
  RETURN table_func_type PIPELINED IS
BEGIN
  FOR i IN 1..n LOOP
    PIPE ROW(table_func_rec(i, 'i=' || i));
  END LOOP;
  RETURN;
END;

//sql
//

