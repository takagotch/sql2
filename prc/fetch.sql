//mysql



//psgl
CREATE OR REPLACE FUNCTION test_fetch() RETURNS void AS $$
DECLARE
  cursor_name CURSOR FOR SELECT a FROM foo;
  i INTEGER;
BEGIN
  OPEN cursor_name;
  LOOP
    FETCH cursor_name INTO i;
    EXIT WHEN NOT FOUND;
    RAISE NOTICE 'i=%', i;
END LOOP;
CLOSE cursor_name;
END;
$$ LANGUAGE 'plpgsql';




