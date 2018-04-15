//Params PROCEDURE /prc/params_procedure.sql
//CREATE PROCEDURE /ddl/create_procedure.sql
//CREATE PROCEDURE
//

//oracle INSERT IN OUT INOUT @params_name = 1 DEFAULT INSERT 
CREATE PROCEDURE p_foo(a IN NUMBER,b IN NUMBER) IS
BEGIN
  IF a = 1 THEN
    INSERT INTO foo VALUES(b);
  ELSE
    INSERT INTO foo VALUES(a);
  END IF;
END;
//IN OUT Params PROCEDURE p_foo
CREATE PROCEDURE p_foo(a IN NUMBER,b OUT NUMBER) IS
BEGIN
  b := a * 2;
END;

BEGIN
  p_foo;
END;

DECLARE
  result NUMBER;
BEGIN
  p_foo(1,result);
END;

DECLARE
  result NUMBER;
BEGIN
  p_foo(b=>result, a=>1);
END;
//DEFAULT 
CREATE PROCEDURE p_foo(a IN NUMBER DEFAULT 0,
  b OUT NUMBER) IS
BEGIN
  b :=  a * 2;
END;

DECLARE
  result NUMBER;
BEGIN
  p_foo(b=>result);
END;

//sql DEFAULT @params_name = 1 OUTPUT 
CREATE PROCEDURE p_foo(@a int,@b int) AS
BEGIN
  IF @a = 1
    INSERT INTO foo VALUES(@b)
  ELSE
    INSERT INTO foo VALUES(@a)
END

CREATE PROCEDURE p_foo(@a int,@b int OUTPUT) AS
BEGIN
  SELECT @b = MAX(i) FROM foo WHERE j = @a
END

EXECUTE p_foo 1,2

DECLARE @result int
EXECUTE p_foo 1,@result OUTPUT

CREATE PROCEDURE p_foo(@a int,@b int = 0) AS
BEGIN
  INSERT INTO foo VALUES(@a, @b);
END

EXECUTE p_foo 1

CREATE PROCEDURE p_foo(@a int = 0,@b int) AS
BEGIN
  INSERT INTO foo VALUES(@a, @b);
END

EXECUTE p_foo DEFAULT,1

EXECUTE p_foo @b = 1

//mysql IN OUT INOUT 
CREATE PROCEDURE p_foo(IN a INTEGER,IN b INTEGER)
  LANGUAGE
BEGIN
  IF a = 1 THEN
    INSERT INTO foo VALUES(b);
  ELSE
    INSERT INTO foo VALUES(a);
  END IF;
END

CREATE PROCEDURE p_foo(IN a INTEGER,OUT b INTEGER)
  LANGUAGE SQL
BEGIN
  SELECT MAX(i) INTO b FROM foo WHERE j = a;
END

CREATE PROCEDURE call_p_foo() LANGUAGE SQL
BEGIN
  DECLARE a INTEGER;
  DECLARE a INTEGER;
  SET a = 1;
  SET b = 2;
  CALL p_foo(a,b);
END







---


