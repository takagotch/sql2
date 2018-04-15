//GOTO
//EXIT
//IF
//oracle variable end_loop NULL
DECLARE
  i NUMBER := 0;
BEGIN
  LOOP
    i := i + 1;
    IF i >= 20 THEN
      GOTO end_loop;
    END IF;
  END LOOP;
<<end_loop>>
  NULL;
END

//sql GOTO :
DECLARE @i int
SET @i = 0
WHILE @i < 100
BEGIN
  SET @i = @i + 1
  IF(@i >= 20)
    GOTO end_loop
  PRINT @i
END
end_loop:
PRINT 'Exit Loop'

//mysql variable end_loop
CREATE PROCEDURE test_goto() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER DEFAULT 0;
  LOOP
    SET i = i + 1;
    IF i >= 20 THEN
      GOTO end_loop;
    END IF;
  END LOOP;
end_loop;
  SET i = 0;
END


---


