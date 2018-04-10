//oracle
DECLARE
  result NUMBER;
  val NUMBER := 1;
BEGIN
  SELECT a INTO result FROM bar WHERE a = val;
  IF result IS NOT NULL THEN
    DBMS_OUTPUT.PUT_LINE('FOUND');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Not Found');
  END IF;
END;


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

//sql

//mysql
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

//psgl
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



