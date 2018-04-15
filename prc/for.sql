//FOR
//DECLARE CURSOR

//oracle FOR
BEGIN
  FOR i IN 0..100 LOOP
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
END;

//REVERSE
BEGIN
  FOR i IN REVERSE 0..10 LOOP
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
END;
//FOR IN SELECT FROM
DECLARE
  CURSOR cur IS SELECT a,b FROM foo;
  BEGIN
    FOR rec IN cur LOOP
      DBMS_OUTPUT.PUT_LINE('a=' || rec.a || ',b=' || rec.b);
  END LOOP;
END;
//FOR SUBQUERY
BEGIN
  FOR rec IN(SELECT a, b FROM foo) LOOP
    DBMS_OUTPUT.PUT_LINE('a=' || rec.a || ',b=' || rec.b);
  END LOOP;
END:

//db2
CERATE PROCEDURE test_for() LANGUAGE SQL
BEGIN
  FOR rec AS SELECT a,b FROM foo DO
    INSERT INTO bar VALUES(rec.a, rec.b);
  END FOR;
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

//SELECT FOR
CREATE FUNCTION test_for_select() RETURNS INTEGER AS $$
DECLARE
  rec RECORD;
  n INTEGER := 0;
BEGIN
  FOR rec IN SELECT * FROM foo LOOP
    RAISE NOTICE '%,%',rec.a,rec.b;
    n := n + rec.a;
  END LOOP;
  RETURN n;
END;
$$ LANGUAGE 'plpgsql'






---


