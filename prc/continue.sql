//CONTINUE
//WHILE

//sql CONTINUE variable i 
DECLARE @i int
SET @i = 0
WHILE @i < 200
BEGIN
  SET @i = @i + 1
  IF (@i % 10 = 0) CONTINUE
  IF (@i >= 100) BREAK
  PRINT @i
END

//oracle variable i CONTINUE
DECLARE
BEGIN
  FOR i IN 0..100 LOOP
    CONTINUE WHEN i MOD 10 = 0;
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
END;





---


