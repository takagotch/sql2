//DROP FUNCTION

//oracle
CREATE FUNCTION func (INTEGER) RETURNS VARCHAR AS $$ 
DECLARE
  result VARCHAR;
BEGIN
  SELECT MAX(a) INTO result FROM bar WHERE a = $1;
  IF result IS NOT NULL THEN
    RETURN 'Found';
  ELSE
    RETURN 'Not Found';
  END IF;
END$$ LANGUAGE 'plpgsql'


SELECT * FROM foo WHERE func(a) = 'Found'

//sql
CREATE FUNCTION func (@aa int) RETURNS varchar(10) AS
BEGIN
  DECLARE @result int
  SELECT @result = MAX(a) FROM bar WHERE a = @aa
  IF @result IS NOT NULL
    RETURN 'Found'
  RETURN 'Not Found'
END

SELECT * FROM foo WHERE fbo.func(a) = 'Found'

//db2
CREATE FUNCTION func(a INTEGER) RETURNS VARCHAR(20)
  LANGUAGE SQL
  RETURN CASE a WHEN 0 THEN 'zero' 1 THEN 'one'
    ELSE '?' END;


//psql
CREATE FUNCTION func(INTEGER) RETURNS VARCHAR AS $$
DECLARE
  result VARCHAR;
BEGIN
  SELECT MAX(a) INTO result FROM bar WHERE a = $1;
  IF result IS NOT NULL THEN
    RETURN 'Found';
  ELSE
    RETURN 'Not Found';
  END IF;
END$$ LANGUAGE 'plpgsql'


CREATE FUNCTION f_sql(INTEGER) RETURNS INTEGER AS '
  SELECT MAX(a) FROM foo WHERE b = $1;
' LANGUAGE 'sql'

SELECT * FROM foo WHERE func(a) = 'Found'




