//IF
//oracle result NULL 'Found' 'Not Found'
DECLARE
  result NUMBER;
  val NUMBER := 1;
BEGIN
  SELECT a INTO result FROM bar WHERE a = val;
  IF result IS NOT NULL THEN
    DBMS_OUTPUT.PUT_LINE('Found');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Not Found');
  END IF;
END;

//ELSIF params a 'zero' 'not zero and one'
CREATE FUNCTION test_ifthen_elseif(a IN INTEGER)
  RETURN VARCHAR2 IS
BEGIN
  IF a = 0 THEN
    RETURN 'zero';
  ELSIF a = 1 THEN
    RETURN 'one';
  ELSE
    RETURN 'not zero and one';
  END IF;
END

//sql ELSE
DECLARE @result int
DECLARE @val int
SET @val = 1
SELECT @result = a FROM bar WHERE a = @val
IF @result IS NOT NULL
  print('Found')
ELSE
  print('Not Found')

//mysql ELSEIF END IF THEN ELSE INSERT 
CREATE PROCEDURE test_ifthen() LANGUAGE SQL
BEGIN
  DECLARE res INTEGER;
  DECLARE val INTEGER DEFAULT 1;
  SELECT a INTO res FROM bar WHERE a = val;
  IF res IS NOT THEN
    INSERT INTO result VALUES('Found');
  ELSE
    INSERT INTO result VALUES('Not Found');
  END IF;
END

//argument = 0 PROCEDURE
CREATE PROCEDURE test_ifthen_elseif(IN a INTEGER)
  LANGUAGE SQL
BEGIN
  IF a = 0 THEN
    INSERT INTO result VALUES('zero');
  ELSEIF a = 1 THEN
    INSERT INTO result VALUES('one');
  ELSE
    INSERT INTO result VALUES('not zero and one');
  END IF;
END

//psgl IF THEN ELSIF ELSE END IF argument 0 'zero' 'not zero'
CREATE FUNCTION test_ifthen(INTEGER) RETURNS VARCHAR
  AS $$
BEGIN
  IF $1 = 0 THEN
    RETURN 'zero';
  ELSE
    RETURN 'not zero';
  END IF;
END;
$$ LANGUAGE 'plpgsql';

//argument 0 ELSIF
CREATE FUNCTION test_ifthen_elseif(INTEGER)
  RETURN VARCHAR AS $$
BEGIN
  IF $1 = 0 THEN
    RETURN 'zero';
  ELSIF $1 = 1 THEN
    RETURN 'one';
  ELSE
    RETURN 'not zero and one';
  END IF;
END
$$ LANGUAGE 'plpgsql';



