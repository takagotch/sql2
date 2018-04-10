//ITERATE

CREATE PROCEDURE test_leave() LANGUAGE SQL
BEGIN
  DECLARE i INTEGER;
  SET i = 0;
  loop_label: LOOP
    SET i = i + 1;
    IF i >= 10 THEN
      LEAVE loop_label;
    END IF;
  END LOOP;
END



