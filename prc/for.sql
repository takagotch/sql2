//DECLARE CURSOR

//oracle
BEGIN
  FOR i IN 0..100 LOOP
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
END;


BEGIN
END;

DECLARE
END;

BEGIN
END:

//db2
CERATE
END

//psgl
CREATE FUNCTION test_for() RETURNS INTEGER AS $$
DECLARE
  i INTEGER;
BEGIN
  FOR i IN 1..10 LOOP
    RAISE NOTICE 'i=%',i;
  END LOOP;
  RETURN i;
END;
$$ LANGUAGE 'plpgsql'


CREATE FUNCTION test_for_select() RETURNS INTEGER AS $$
DECLARE
  rec REOCRD;
  n INTEGER := 0;
BEGIN
  FOR rec IN SELECT * FROM foo LOOP
    RAISE NOTICE '%,%',rec.a,rec.b;
    n := n + rec.a;
  END LOOP;
  RETURN n;
END;
$$ LANGUAGE 'plpgsql'




