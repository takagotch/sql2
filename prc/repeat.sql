//WHILE
//LEAVE

CREATE PROCEDURE test_repeat() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  SET i = 0;
  REPEAT
    SET i = i + 1;
    UNTIL i >= 100
  END REPEAT;
END REPEAT;
END


