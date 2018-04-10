//FOR
//EXIT
//oracle
DECLARE
  i NUMBER;
BEGIN
  i := 0;
  LOOP
    i := i + 1;
    EXIT WHEN i > 100;
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
END;


//mysql
CREATE PROCEDURE test_loop() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  SET i = 0;
  loop_label: LOOP
    SET i = i + 1;
    IF i > 100 THEN
      LEAVE loop_label;
    END IF;
  END LOOP;
END


//psgl
CREATE FUNCTION test_loop() RETURNS INTEGER AS $$
DECLARE
  i INTEGER;
BEGIN
  i := 0;
  LOOP
    i := i + 1;
    EXIT WHEN i > 100;
    RAISE NOTICE 'i=%',i;
  END LOOP;
  RETURN i;
END;
$$ LANGUAGE 'plpgsql'




