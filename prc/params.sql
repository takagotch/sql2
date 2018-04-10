//oracle
DECLARE
  PROCEDURE foo(a IN NUMBER) IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('foo(NUMBER)');
  END;
  PROCEDURE foo(a IN VARCHAR2, b NUMBER) IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('foo(VARCHAR2,NUMBER)');
  END;
BEGIN
  foo(1);
  foo('abc',2)
END;


DECLARE
  PROCEDURE foo(a IN REAL) IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('foo(REAL)');
  END;
  PROCEDURE foo(a IN INTEGER) IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('foo(INTEGER)');
  END;
BEGIN
  foo(1);
END;

DECLARE
END;

//DB2

//psgl
CREATE FUNCTION foo(INTEGER, INTEGER) RETURNS INTEGER AS $$
BEGIN
  RAISE NOTICE 'foo(INTEGER.INTEGER)';
  RETURN $1;
END;$$ LANGUAGE 'plpgsql'

CREATE FUNCTION foo(VARCHAR) RETURNS VARCHAR AS $$
BEGIN
  RAISE NOTICE 'foo(VARCHAR)';
  RETURN $1;
END;$$ LANGUAGE 'plpgsql'


CREATE FUNCTION foo(INTEGER) RETURNS INTEGER AS $$
BEGIN ... END;$$ LANGUAGE 'plpgsql'
CREATE FUNCTION foo(INTEGER) RETURNS VARCHAR AS $$
BEGIN ... END;$$ LANGUAGE 'plpgsql'


CREATE FUNCTION foo(CHAR(20)) RETURNS VARCHAR AS $$
BEGIN ... END;$$ LANGUAGE 'plpgsql'
CREATE FUNCTION foo(VARCHAR(20)) RETURNS VARCHAR AS $$
BEGIN ... END;$$ LANGUAGE 'plpgsql'

SELECT foo(VARCHAR 'sql');
SELECT foo(CAST('abc' AS CHAR(20)));


