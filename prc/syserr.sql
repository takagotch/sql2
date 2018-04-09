//oracle

//psgl
//RAISE
CREATE FUNCTION test_exception(INTEGER) RETURNS void AS $$
DECLARE
BEGIN
  INSERT INTO foo VALUES($1);
EXCEPTION
  WHEN raise_exception THEN
    RAISE NOTICE 'ERR';
  WHEN foreign_key_violation OR not_null_violation THEN
    RAISE NOTICE 'ERR';
  WHEN OTHERS THEN
    RAISE NOTICE 'SQLSTATE:% %',SQLSTATE.SQLERR;
END;
$$ LANGUAGE 'plpgsql';

