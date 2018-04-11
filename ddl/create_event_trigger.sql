//CREATE EVENT TRIGGER
//CREATE FUNCTION

CREATE FUNCTION f_trg_create() RETURNS event_trigger
  AS $$
BEGIN
  INSERT INTO foo_history
    VALUES('create', CURRENT_TIMESTAMP);
END;$$ LANGUAGE 'plpgsql'



CREATE EVENT TRIGGER trg_create_table ON ddl_command_end
  WHEN TAG IN ('CREATE TABLE')
EXECUTE PROCEDURE f_trg_create()





DROP EVENT TRIGGER trg_create_table


----










