//BREAK
//LEAVE

//oracle
DECLARE
  i NUMBER;
BEGIN
  i := 0;
  WHILE i < 100 LOOP
    i := i + 1;
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
END;

//sql
DECLARE @i int
SET @i = 0
WHILE @i < 100
BEGIN
  SET @i = @i + 1
  PRINT @i
END

//mysql
CREATE PROCEDURE test_while() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  SET i = 0;
  WHILE i = 0;
    SET i = i + 1;
  END WHILE;
END
END


//psgl
CREATE FUNCTION test_while() RETURNS INTEGER AS $$
DECLARE
  i INTEGER;
BEGIN
  i := 0;
  WHILE i < 10 LOOP
    i := i + i;
    RAISE NOTICE 'i=%',i;
  END LOOP;
  RETURN i;
END;
$$ LANGUAGE 'plpgsql'


