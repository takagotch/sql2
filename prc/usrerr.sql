CREATE FUNCTION f_foo(av IN NUMBER) RETURN VARCHAR2 AS
  result VARCHAR2(10);
  exp_null EXCEPTION;
BEGIN
  SELECT b INTO result FROM foo WHERE foo.a = av;
  IF result IS NULL THEN
    RAISE exp_null;
  END IF;
  RETURN 'found';
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN
  WHEN exp_null THEN --
    RETURN
END;

