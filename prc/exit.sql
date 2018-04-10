//LOOP
//GOTO

//oracle

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


