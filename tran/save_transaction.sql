//SAVE TRANSACTION
//COMMIT
//ROLLBACK

//sql

BEGIN TRAN
INSERT INTO foo VALUES(1,'abc')
SAVE TRAN A
UPDATE foo SET b = 'xyz' WHERE a = 1
ROLLBACK TRAN A
COMMIT TRAN


------







