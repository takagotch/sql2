//CREATE TYPE BODY

//CREATE TYPE
//DROP TYPE


//CREATE TYPE mytype
CREATE OR REPLACE TYPE mytype AS
  MEMBER FUNCTION get_atr1 RETURN NUMBER IS
  BEGIN
    RETURN atr1;
  END;
  MEMBER FUNCTION get_atr2 RETURN VARCHAR2 IS
  BEGIN
    RETURN SELF.atr2;
  END;
END;

DECLARE
  o mytype;
BEGIN
  o := mytype(0,'tky');
  DBMS_OUTPUT.PUT_LINE(o.get_atr1());
  DBMS_OUTPUT.PUT_LINE(o.get_atr2());
END;

//mytype mysubtype
CREATE OR REPLACE TYPE BODY mysubtype AS
  MEMBER FUNCTION get_atr3 RETURN NUMBER IS
  BEGIN
    RETURN atr3;
  END;
END;


DECLARE
  o mysubtype;
BEGIN
  o := mysubtype;
  DBMS_OUTPUT.PUT_LINE(o.get_atr1());
  DBMS_OUTPUT.PUT_LINE(o.get_atr2());
  DBMS_OUTPUT.PUT_LINE(o.get_atr3());
END;

//STATIC
CREATE OR REPLACE TYPE BODY mytype2 AS
  STATIC FUNCTION make_mytype2(atr1 NUMBER, atr2 NUMBER)
    RETURN mytype2 IS
  BEGIN
    RETURN mytype2(atr1,atr2);
  END;
END;

DECLARE
  o mytype2;
BEGIN
  o := mytype2.make_mytype2(10,20);
  DBMS_OUTPUT.PUT_LINE(o.atr1);
  DBMS_OUTPUT.PUT_LINE(o.atr2);
END;

//mytype mysubtype2 OVERRINING
CREATE OR REPLACE TYPE mysubtype2 UNDER mytype (
  atr3 NUMBER,
  OVERRIDING MEMBER FUNCTION get_atr1 RETURN NUMBER
) NOT FINAL;

CREATE OR REPLACE TYPE BODY mysubtype2 AS
  OVERRIDING MEMBER FUNCTION get_atr1 RETURN NUMBER IS
  BEGIN
    RETURN atr3;
  END;
END;

DECLARE
  o1 mytype;
  o2 mysubtype2;
BEGIN
  o1 := mytype(1,'super');
  o2 := mysubtype2(1,'sub',20);
  DBMS_OUTPUT.PUT_LINE(o1.get_atr1());
  DBMS_OUTPUT.PUT_LINE(o2.get_atr1());
END;


---










