//FETCH
//DECLARE CURSOR
//FOR
//mysql



//psgl
//FETCH INTO ,
//ROWTYPE FOUND
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

//OPEN p
DECLARE
  CURSOR cursor_name() IS SELECT s FROM foo
    WHERE a=p;
  i NUMBER;
BEGIN
  OPEN cursor_name(1);
  LOOP
    FETCH cursor_name INTO i;
    EXIT WHEN cursor_name%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
  CLOSE cursor_name;
END;


//oracle
//FETCH INTO
//NOTFOUND
DECLARE 
  CURSOR cursor_name IS SELECT a FROM foo;
  i NUMBER;
BEGIN
  OEPN cursor_name;
  LOOP
    FETCH cursor_name INTO i;
    EXIT WHEN cursor_name%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('i=' || i);
  END LOOP;
  CLOSE cursor_name;
END
//sql
DECLARE cursor_name CURSOR FOR SELECT a FROM foo
DECLARE @i int
OPEN cursor_name
FETCH NEXT FROM cursor_name INTO @i
WHILE @@FETCH_STATUS = 0
BEGIN
  PRINT @i
  FETCH NEXT FROM cursor_name INTO @i
END
CLOSE cursor_name
DEALLOCATE cursor_name

//mysql
//FETCH INTO
CREATE PROCEDURE test_fetch() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  DECLARE i INTEGER DEFAULT 1;
  DECLARE cursor_name CURSOR FOR SELECT a FROM foo;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET 1 = 0;
  OPEN cursor_name
    FETCH cursor_name INTO i;
    IF 1 = 0 THEN LEAVE fetch_loop; END IF;
  END LOOP;
  CLOSE cursor_name;
END







---

