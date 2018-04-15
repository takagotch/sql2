//EXIT
//LOOP
//GOTO LABEL

//oracle EXIT WHEN
DECLARE
  i NUMBER;
BEGIN
  i := 0;
  LOOP
    i := i + 1;
    EXIT WHEN i >= 10;
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
END;

//psgl 
CREATE FUNCTION test_label() RETURNS VARCHAR AS $$
DECLARE
  i INTEGER;
  j INTEGER;
BEGIN
<<loop_label>>
  FOR i IN 0..10 LOOP
    FOR j IN 0..5 LOOP
      RAISE NOTICE 'i=% j=%',i,j;
      IF i > 2 AND j > 3 THEN
        EXIT loop_label;
      END IF;
    END LOOP;
  END LOOP;
END;
$$ LANGUAGE 'plpgsql'


