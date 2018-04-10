//LOOP

CREATE PROCEDURE test_iterate() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  SET i = 0;
  loop_label: WHILE i < 200 DO
    SET i = i + 1;
    IF MOD(i, 10) = 0 THEN
      ITERATE loop_label;
    END IF;
    IF i >= 100 THEN
      LEAVE loop_label;
    END IF;
  END WHILE;
END


