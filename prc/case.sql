//CASE
//CASE calculate
//oracle CASE ENDCASE; 
DECLARE
  result NUMBER;
BEGIN
  SELECT MAX(a) INTO result FROM foo;
  CASE result
    WHEN 1 THEN
      DBMS_OUTPUT.PUT_LINE('MAX is 1');
    WHEN 2 THEN
      DBMS_OUTPUT.PUT_LINE('MAX is 2');
    ELSE
      DBMS_OUTPUT.PUT_LINE('MAX is big');
  END CASE;
END;

