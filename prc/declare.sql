//DECLARE


//psgl
//DECLARE
//SEELCT value INTO variable_name
//variable_name := value
CREATE FUNCTION test() RETURNS INTEGER AS $$
DECLARE
  i INTEGER;
  s VARCHAR;
BEGIN
  i := 100;
  j := 'test string';
  RAISE NOTICE 'i=% s=%',i,s;
  RETURN i;
END;
$$ LANGUAGE 'plpgsql'

//mysql
//DECLARE
//SELECT value INTO variable_name
//SET variable_name=value
CREATE PROCEDURE test_declare() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  DECLARE s VARCHAR(20);
  SET i = 100;
  SET s = 'test string';
END


//oracle
/*
 DECLARE
   var_a foo.a%TYPE;
   var_b var_a%TYPE;
 BEGIN
 */
DESLARE
  i NUMBER;
  j NUMBER;
BEGIN
  i := 1;
  SELECT 2 INTO j FROM DUAL;
END;

DECLARE
  pi CONSTANT NUMBER := 3.141592;
  e NUMBER DEFAULT 2.71828183;
BEGIN
END;

//sql
DECLARE @i int
DECLARE @j int
SELECT @i = 1
SET @j = 2

DECLARE @i int, @j int
SELECT @i = 1
SET @j = 2
//db2
CREATE PROCEDURE test_declare() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  DECLARE s VARCHAR(20);
  SET i = 100;
  SET s = 'test string';
END










---

