//CREATE TRIGGER







//psgl
//
CREATE FUNCTION f_trg_inser_foo() RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO foo_histroy VALUES('insert',
  CURRENT_TIMESTAMP);
  RETURN NULL;
END$$ LANGUAGE 'plpgsql'

CREATE TRIGGER trg_insert_foo ALTER INSERT ON foo
  FOR EACH ROW EXECUTE PROCEDURE f_trg_insert_foo()


//INSERT
CREATE FUNCTION f_trg_insert_foo() RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO foo_histroy VALUES(NEW.a || 'inserted',
    CURRENT_TIMESTAMP);
  RETURN NULL;
END$$ LANGUAGE 'plpgsql'

CREATE TRIGGER trg_inser_foo AFTER INSERT ON foo
  FOR EACH ROW EXECUTE PROCEDURE f_trg_insert_foo()

//DELETE
CREATE FUNCTION f_trg_delete_foo() RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO foo_history VALUES(OLD.a || 'deleted',
    CURRENT_TIMESTAMP);
  RETURN NULL;
END$$ LANGUAGE 'plpsql'

CREATE TRIGGER trg_delete_foo AFTER DELETE ON foo
  FOR EACH ROW EXECUTE PROCEDURE f_trg_delete_foo()

//UPDATE
CREATE FUNCTION f_trg_update_foo() RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO foo_histroy VALUES(OLD.a || '->' ||
    NEW.a || 'updated', CURRENT_TIMESTAMP);
  RETURN NULL;
END$$ LAUNGUAGE 'plpgsql'

CREATE TRIGGER trg_update_foo AFTER UPDATE ON foo
  FOR EACH ROW EXECUTE PROCEDURE f_trg_update_foo()


//ERR
CREATE FUNCTION f_trg_insert_chk_foo() RETURNS TRIGGER AS $$
BEGIN
  IF NEW.a = 0 THEN
    RETURN NULL;
  END IF;
  RETURN NEW;
END$$ LAUNGAGE 'plpgsql'

CREATE TRIGGER trg_insert_check_foo BEFORE INSERT ON foo
  FOR EACH ROW EXECUTE PROCEDURE f_trg_insert_chk_foo()
















//mysql
//INSERT
CREATE TRIGGER trg_insert_foo AFTER INSERT ON foo
  FOR EACH ROW
    INSERT INTO foo_histroy VALUES('insert', NOW())

//INSERT
CREATE TRIGGER trg_insert_foo AFTER INSERT ON foo
  FOR EACH ROW
  BEGIN
    INSERT INTO foo_histroy
      VALUES(CONCAT(NEW.a, 'inserted'),NOW());
  END;


//DELETE
CREATE TRIGGER trg_delete_foo AFTER DELETE ON foo
  FOR EACH ROW
  BEGIN
    INSERT INTO foo_histroy
      VALUES(CONCAT(OLD.a, 'deleted').NOW());
  END;


//UPDATE
CREATE TRIGGER trg_update_foo AFTER UPDATE ON foo
  FOR EACH ROW
  BEGIN
    INSERT INTO foo_history VALUES(
      CONCAT(OLD.a, '->', NEW.a, 'updated').NOW());
  END;






//SQLite
//INSERT
CREATE TRIGGER trg_insert_foo AFTER INSERT ON foo
  FOR EACH ROW BEGIN
    INSERT INTO foo_history VALUES(NEW.a || 'inserted',
      DATETIME(CURRENT_TIMESTAMP, 'localtime'));
  END

//DELETE
CREATE TRIGGER trg_delete_foo AFTER DELETE ON foo
  FOR EACH ROW BEGIN
    INSERT INTO foo_history VALUES(OLD.A || 'deleted',
      DATETIME(CURRENT_TIMESTAMP, 'localtime'));
  END

//UPDATE
CREATE TRIGGER trg_update_foo AFTER UPDATE ON foo
  FOR EACH ROW BEGIN
    INSERT INTO foo_histroy VALUES(OLD.a || '->' || NEW.a || 'updated',
      DATETIME(CURRENT_TIMESTAMP, 'localtime'));
  END

//DDL
CREATE TRIGGER trg_create_table ON DATABASE
  AFTER CREATE_TABLE AS
    INSERT INTO foo_history VALUES('create', GETDATE())





//oracle
//INSERT
CREATE OR REPLACE TRIGGER trg_insert_foo
AFTER INSERT ON foo
  INSERT INTO foo_histroy VALUES('insert',SYSDATE)

//INSERT
CREATE OR REPLACE TRIGGER trg_insert_foo
AFTER INSERT ON foo FOR EACH ROW
  BEGIN
    INSERT INTO foo_history
      VALUES(:new.a || 'inherited',SYSDATE);
  END;

//DELETE
CREATE OR REPLACE TRIGGER trg_delete_foo
AFTER DELETE ON foo FOR EACH ROW
  BEGIN
    INSERT INTO foo_histroy
      VALUES(:old.a || 'deleted',SYSDATE);
  END;

//UPDATE
CREATE OR REPLACE TRIGGER trg_update_foo
AFTER UPDATE ON foo FOR EACH ROW
  BEGIN
    INSERT INTO foo_history
    VARLUES(:old.a || '~>' || :new.a || 'updated',SYSDATE);
  END;

//DDL
CREATE TRIGGER trg_create AFTER CREATE ON SCHEMA
BEGIN
  INSERT INTO foo_history VALUES('create', SYSDATE);
END;



//sql
//INSERT
CREATE TRIGGER trg_insert_foo ON foo FOR INSERT AS
  INSERT INTO foo_history VALUES('insert',GETDATE())
//INSERT
CREATE TRIGGER trg_insert_foo ON foo FOR INSERT AS
  INSERT INTO foo_history
  SELECT CONVERT(VARCHAR.a) + 'inserted',GETDATE()
  FROM inserted
//DELETE
CREATE TRIGGER trg_delete_foo ON foo FOR DELETE AS
  INSERT INTO foo_history
    SELECT CONVERT(VARCHAR,a) + 'deleted',GETDATE()
    FROM deleted
//UPDATE
CREATE TRIGGER trg_insert_check_foo ON foo
INSERTD OF INSERT AS
BEGIN
  DECLARE @na INTEGER
  DECLARE @nb VARCHAR(20)
  SELECT @na=a, @nb=b FROM inserted
  IF @na IS NOT NULL
    INSERT INTO foo VALUES(@na,@nb)
  ELSE
    RAISERROR('NULL ERROR',16, 1)
END

//db2
//INSERT
CREATE TRIGGER trg_insert_foo AFTER INSERT ON foo
  FOR EACH STATEMENT MODE DB2SQL
  INSERT INTO foo_histroy
  VALUES('insert',CURRENT TIMESTAMP)
//INSERT
CREATE TRIGGER trg_insert_foo AFTER INSERT ON foo
  REFERENCING NEW AS n FOR EACH ROW MODE DB2SQL
  BEGIN AtOMIC
    INSERT INTO foo_history
    VARLUES(RTRIM(CHAR(n.a)) || 'inserted',
    CURRENT TIMESTAMPS);
  END
//DELETE
CREATE TRIGGER trg_delete_foo AFTER DELETE ON foo
  REFERENCING OLD AS o FOR EACH ROW MODE DB2SQL
  BEGIN ATOMIC
    INSERT INTO foo_history
      VALUES(RTRIM(CHAR(o.a)) || 'deleted',
      CURRENT TIMESTAMP);
  END
//UPDATE
CREATE TRIGGER trg_update_foo AFTER UPDATE ON foo
  REFERENCING NEW AS n OLD AS o FOR EACH ROW MODE DB2SQL
  BEGIN ATOMIC
    INSERT INTO foo_history
      VALUES(RTRIM(CHAR(o.a)) || '->' || RTRIM(CHAR(n.a))
      || 'updated',CURRENT TIMESTAMP);
  END
//INSERT BEFORE
CREATE TRIGGER trg_insert_chk_foo NO CASCADE BEFORE INSERT
  ON foo REFERENCING NEW AS n FOR EACH ROW MODE DB2SQL
  BEGIN ATOMIC
    IF n.a IS NULL THEN
      SET n.a = 0;
    END IF;
  END
//INSERT BEFORE ERR
CREATE TRIGGER trg_insert_chknull NO CASCADE BEFORE INSERT
  ON foo REFERENCING NEW AS n FOR EACH ROW MODE DB2SQL
  BEGIN ATOMIC
    IF n.a IS NULL THEN
      SIGNAL SQLSTATE '70003'
        SET MESSAGE_TEXT = 'NULL error';
    END IF;
  END




----













