//CUSOR
//

//oracle
//DECLARE TYPE type IS REF CURSOR
DECLARE
  TYPE cursor_type IS REF CURSOR;
  cursor_name cursor_type;
  PROCEDURE test_cursor_pc(pc cursor_type) IS
    i NUMBER;
  BEGIN
    LOOP
      FETCH pc INTO i;
      EXIT WHEN pc%NOTFOUND;
    END LOOP;
  END;
  BEGIN
    OPEN cursor_name FOR SELECT a FROM foo;
    test_cursor_pc(cursor_name);
    CLOSE cursor_name;
  END;
END;


//sql SET @cur=CURSOR FOR SELECT OPEN FETCH CLOSE CURSOR VARYING OUTPUT
CRATE PROCEDURE test_cursor_pc(@pc CURSOR VARYING
  OUTPUT) AS
BEGIN
  DECLARE @i int
  FETCH NEXT FROM @pc INTO @i
  WHILE @@FETCH_STATUS = 0
  BEGIN
    FETCH NEXT FROM @pc INTO @i
  END
END

DECLARE @cur CURSOR
SET @cur=CURSOR FOR SELECT a FROM foo
OPEN @cur
EXECUTE test_cursor_pc @cur
CLOSE @cur
DEALLOCATE @cur




//psgl REFCURSOR OPEN SELECT
CREATE FUNCTION test_cursor_pc(pc REFCURSOR) RETURNS
void AS $$
DECLARE
BEGIN
END;$$ LANGUAGE 'plpgsql';

CREATE FUNCTION test_cursor() RETURN void AS $$
DECLARE
  cursor_name REFCURSOR;
BEGIN
  OEPN cursor_name FOR SELECT a FROM foo;
  PREFORM test_cursor_pc(cursor_name);
  CLOSE cursor_name;
END;$$ LANGUAGE 'plpgsql';





---


