//CREATE FUNCTION

//oracle
CREATE FUNCTION f_foo(a IN NUMBER,b IN NUMBER)
  RETURN NUMBER IS
BEGIN
  RETURN a * b;
END;

DECLARE
  r NUMBER := 0;
BEGIN
  r := f_foo(2,3);
  DBMS_OUTPUT.PUT_LINE('r=' || r);
END;


CREATE FUNCTION f_foo(a IN NUMBER,b IN NUMBER,
  c OUT NUMBER) RETURN NUMBER IS
BEGIN
  c := a * b;
  RETURN c;
END;


DECLARE
  r NUMBER := 0;
  r NUMBER := 0;
BEGIN
  r := f_foo(2,3,c);
  DBMS_OUTPUT.PUT_LINE('c=' || c);
END;


//sql

//db2

//psgl
CREATE FUNCTION f_foo(INTEGER, INTEGER) RETURNS INTEGER
  AS $$
BEGIN
  RAISE NOTICE 'argl=% arg2=%', $1, $2;
  RETURN $1;
END;$$ LANGUAGE 'plpgsql';


CREATE FUNCTION f_foo(arg1 INTEGER, arg2 INTEGER)
  RETURN INTEGER AS $$
BEGIN
  RAISE NOTICE 'arg1=% arg2=%', arg1, arg2;
  RETURN $1;
END;$$ LANGUAGE 'plpgsql';


CREATE FUNCTION f_foo(arg1 INTEGER, arg2 OUT INTEGER)
  AS $$
BEGIN
  arg2 := arg1;
END;
$$ LANGUAGE 'plpgsql';

SELECT * FROM f_foo(1);

arg2
------
    1


