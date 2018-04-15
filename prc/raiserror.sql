//RAISERROR
//sql msg printf %d %s % argument ap_addmessage severity state RAISERROR ROLLBACK params 0 transaction
CREATE PROCEDURE p_foo(@a int) AS
BEGIN
  BEGIN TRANSACTION
  INSERT INTO result VALUES(@a)
  IF @a = 0
  BEGIN
    RAISERROR('params %d ',18,1,@a)
    ROLLBACK TRANSACTION
  END
  ELSE
    COMMIT TRANSACTION
END






----


