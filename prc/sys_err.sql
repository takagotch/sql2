//SYSTEM ERR
//RAISE

//oracle, psgl EXCEPTION WHEN THEN
DECLARE
  ab NUMBER;
BEGIN
  SELECT MAX(a / b) INTO ab FROM foo;
EXCEPTION
  WHEN ZERO_DIVIDE THEN
    DBMS_OUTPUT.PUT_LINE('0 divide');
END;

/*
 COLLECTION_IS_NULL
 CURSOR_ALREADY_OPEN
 DUP_VAL_ON_INDEX
 INVALID_CURSOR
 INVALID_NUMBER
 LOGIN_DENIED
 NO_DATE_FOUND
 NOT_LOGED_ON
 ROWTYPE_MISMATCH
 SYS_INVALID_ROWID
 TOO_MANY_ROWS
 VALUE_ERROR
 ZERO_DIVIDE
 */

CREATE PROCEDURE p_foo(a IN VARCHAR2,b IN NUMBER) IS
BEGIN
  INSERT INTO foo VALUES(a,b);
EXCEPTION
  WHEN INVALID_NUMBER THEN
    DBMS_OUTPUT.PUT_LINE('invalid number');
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('duplicate value on index');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('other exception raised');
END;

/* ERR
 division_by_zero
 floating_point_exception
 string_data_right_truncation
 datatype_mismatch
 not_null_violation
 foreign_key_violation
 unique_violation
 check_violation
 raise_exception
 */
//INSER EXCEPTION psgl
CREATE FUNCTION test_exception(INTEGER) RETURNS void AS $$

$$ LANGUAGE 'plpgsql';








---





















---


