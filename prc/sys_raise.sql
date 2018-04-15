//EXCEPTION RAISE
//oracle EXCEPTION WHEN
CREATE FUNCTION f_foo(av IN NUMBER) RETURN VARCHAR AS
  result VARCHAR2(10);
  exp_null EXCEPTION;
BEGIN
  SELECT b INTO result FROM foo WHERE foo.a = av;
  IF result IS NULL THEN
    RAISE exp_null;
  END
  RETURN 'found';
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'not found';
  WHEN exp_null THEN -- exp_null
    RETURN 'null value';
END;




---



