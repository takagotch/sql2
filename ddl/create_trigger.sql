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
    INSERT INTO foo_histroy VALUES('insert', ROW())

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






