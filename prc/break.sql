//BREAK
//WHILE
//CONTINUE
//sql

//BREAK
DECLARE @i int
SET @i = 0
WHILE @i < 100
BEGIN
  SET @i = @i + 1
  IF(@i >= 10)
    BREAK
  PRINT @i
END




