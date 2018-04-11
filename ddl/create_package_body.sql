//DROP PACKAGE

CREATE PACKAGE BODY mypack AS
  var3 NUMBER;
  FUNCTION get_var1 RETURNS NUMBER AS
  BEGIN
    RETURN var1;
  END;
  FUNCTION get_var2 RETURN VARCHAR2 AS
  BEGIN
    RETURN var2;
  END;
  PROCEDURE initialize AS
  BEGIN
    var1 := 0; var2 := ''; var3 := 0;
  END;
END;


