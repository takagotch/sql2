//RAISE
//psgl
//sys_raise.sql //oracle

//RAISE DEBUG NOTICE EXCEPTION raise_exception WHEN raise_exception Params 0
CREATE FUNCTION f_foo(INTEGER) RETURNS INTEGER AS $$
BEGIN
  IF $1 = 0 THEN
    RAISE EXCEPTION 'PARAMS %', $1;
  END IF;
  RETURN 100/$1;
EXCEPTION
  WHEN raise_exception THEN
    RAISE NOTICE 'ERR %', SQLERRM;
  RETURN 0;
END;$$ LANGUAGE 'plpgsql';







---



