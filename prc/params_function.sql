//Params Function
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
//IN OUT
CREATE FUNCTION f_foo(a IN NUMBER,b IN NUMBER,
  c OUT NUMBER) RETURN NUMBER IS
BEGIN
  c := a * b;
  RETURN c;
END;
//OUT
DECLARE
  r NUMBER := 0;
  c NUMBER := 0;
BEGIN
  r := f_foo(2,3,c);
  DBMS_OUTPUT.PUT_LINE('c=' || c);
END;

//sql @params_name int
CREATE FUNCTION f_foo(@a int,@b int) RETURNS int AS
BEGIN
  RETURN @a * @b
END

//dbo
SELECT dbo.f_foo(1,2)

//DEFAULT 0
CREATE FUNCTION f_foo(@a int = 0,@b int = 0) RETURNS
  int AS
BEGIN
  RETURN @a * @b
END

SELECT dbo.f_foo(DEFAULT,2)



//mysql LANGUAGE SQL
CREATE FUNCTION f_foo(a INTEGER,b INTEGER) RETURNS
  INTEGER LANGUAGE SQL RETURNS a * b;

SELECT f_foo(1,2) FROM DUMMY








//psgl $1,$2
CREATE FUNCTION f_foo(INTEGER, INTEGER) RETURNS INTEGER
  AS $$
BEGIN
  RAISE NOTICE 'arg1=% arg2=%', $1, $2;
  RETURN $1;
END;$$ LANGUAGE 'plpgsql';

// @params_name int
CREATE FUNCTION f_foo(arg1 INTEGER, arg2 INTEGER)
  RETURNS INTEGER AS $$
BEGIN
  RAISE NOTICE 'arg1=% arg2=%', arg1, arg2;
  RETURN $1;
END;$$ LANGUAGE 'plpgsql';
//OUT SELECT FROM
CREATE FUNCTION f_foo(arg1 INTEGER, arg2 OUT INTEGER)
  AS $$
BEGIN
  arg2 := arg1;
END;
$$ LANGUAGE 'plpgsql';

SELECT * FROM f_foo(1);








---

