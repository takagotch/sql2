tky
SELECT price FROM deposit
  WHERE depositnum = 1234

UPDATE deposit
  SET price = 14,000
  WHERE depositnum = 1234

###

BANK
SELECT price FROM deposit
  WHERE depositnum = 1234

UPDATE deposit
  SET price = 124,000
  WHERE depositnum = 1234

###

COMMIT


### SET TRANSACTION ISOLATOINLEVEL
### BEGIN
### COMMIT
### ROLLBACK
### SAVEPOINT
### SAVE TRANSACTION
### SELECT FOR UPDATE
### LOCK TABLE
### LOCK TABLES
### UNLOCK TABLES




