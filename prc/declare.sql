
//psgl
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
CREATE PROCEDURE test_declare() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  DECLARE s VARCHAR(20);
  SET i = 100;
  SET s = 'test string';
END











//oracle
DESLARE
  i NUMBER;
  j NUMBER;
BEGIN
  i := 1;
  SELECT 2 INTO j FROM DUAL;
END;


