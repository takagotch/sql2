//row MAX MIN
SELECT MAX(a) FROM foo
SELECT MIN(a) FROM foo

//row SUM AVG
SELECT SUM(i) FROM foo
SELECT AVG(i) FROM foo
SELECT SEUM(i),AVG(i) FROM foo
SELECT SUM(DISTINCT i),AVG(DISTINCT i) FROM foo
SELECT AVG(CONVERT(float,i)) FROM foo

//+ 
SELECT * FROM foo,bar

//table
SELECT * FROM Aline,Aline
  WHERE Bline.nextstation Aline.stationnum ??

//LEFT JOIN SUBSTR
SELECT Aline.stationN.stationname FROM Aline.Aline.Aline N
  WHERE Aline.nextstation = N.stationnum

SELECT Aline.stationnum,N.stationname FROM Aline INNER JOIN Aline N
  ON Aline.nextstation = N.stationnum

SELECT * FROM foo,bar WHERE foo.a = bar.a(+)
SELECT * FROM foo,bar WHERE foo.a *= bar.a
SELECT * FROM foo LEFT JOIN bar ON foo.a = bar.a

SELECT * FROM foo,bar WHERE foo.a = bar.a(+)
  AND foo.b = bar.b(+)
SELECT * FROM foo,bar WHERE foo.a *= bar.a
  AND foo.b *= bar.b
SELECT * FROM foo LEFT JOIN bar ON foo.a = bar.a
  AND foo.b = bar.b

SELECT * FROM foo,bar
  WHERE foo.a = SUBSTR(bar.a(+),1,2)

SELECT * FROM foo,bar,more WHERE foo.a = bar.a(+)
  AND bar.b = more.b
SELECT * FROM foo,bar,more WHERE foo.a *= bar.a
  AND bar.b = more.b

SELECT * FROM foo,bar,more WHERE foo.a = bar.a(+)
  AND bar.b = more.b(+)
SELECT * FROM foo,bar,more WHERE foo.a = bar.a
  AND bar.b *= more.b

SELECT * FROM foo,bar,more WHERE foo.a = bar.a(+)
  AND foo.b = more.b(+)
SELECT * FROM foo,bar,more WHERE foo.a *= bar.a
  AND foo.b *= more.b


//subquery
SELECT AvG(sales) FROM evaluation
SELECT * FROM evaluation
  WHERE evaluation > ( SELECT AVG(sales) FROM evaluation )

SELECT * FROM evaluation
  WHERE sales > ( SELECT AVG(S.sales) FROM evaluation S
    WHERE S.salespoint = evaluation.salespoint)


//func
CREATE FUNCTION GETAVG(eigyousyo IN VARCHAR2)
  RETURN NUMBER AS heikin NUMBER;
    BEGIN
      SELECT AVG(sales) INTO heikin FROM evaluation
        WHERE salespoint=eigyousyo;
      RETURN average;
END;


SELECT * FROM evaluation WHERE sales > GETAVG(salespoint)

INSERT INTO foo VALUES(GETAVG('Osaka'))
UPDATE foo SET a = GETAVG('osaka')

//procedure
EXECUTE p_foo
BEGIN p_foo; END;
CALL p_foo;

DECLARE i NUMBER;
BEGIN
  i := 1;
  WHILE i<100000 LOOP
    INSERT INTO big VALUES(i);
    i := i + 1;
  END LOOP;
END;

EXECUTE p_foo 1, 2
DECLARE @result int
EXECUTE p_foo 1,@result OUTPUT

BEGIN p_foo(1,2); END;
DECLARE result NUMBER;
BEGIN p_foo(1,result); END;

CALL p_foo(1,2);
DECLARE result INTEGER;
CALL p_foo(1, result);

//GROUP BY MAX SUM
SELECT MAX(production.productname),SUM(evaluation.sales) FROM evalueation,product
  WHERE evaluation.productcode = product.productcode
  GROUP BY evaluation.productcode

//SUM AVG  ROLLUP
SELECT  salespoint,name,SUM(sales) FROM evaluation
  GROUP BY ROLLUP(evaluation,name)
SELECT  selespoint,name,SUM(sales) FROM evaluation
  GROUP BY evaluation,name WITH ROLLUP

SELECT salepoint,name,SUM(sales),GROUPING(salespoint),
  GROUPING(name) FROM evaluation GROUP BY ROLLUP(salespoint,name)
SELECT salespoint,name,SUM(sales),GROUPING(salespoint),
  GROUPING(name) FROM evaluation GROUP BY salespoint,name WITH ROLLUP

//ODER BY RTRIM(s)+SUBSTRING(t,1,2)
SELECT RTRIM(s) + SUBSTRING(t,1,2),a FROM ORDER BY 1

//ROWCOUNT TOP ROWNUM LIMIT
SELECT TOP 10 * FROM foo ORDER BY a

SELECT * FROM foo WHERE ROWNUM < = 10

SELECT * FROM foo ORDER BY a LIMIT 10

//INSERT VALUES DEFAULT,sequence CREATE SEQUENCE
INSERT INTO foo VALUES(1,DEFAULT,DEFAULT)
INSERT INTO foo(a) VALUES(1)

INSERT INTO foo(i) VALUES(1)

//VALUES()
INSERT INTO foo VALUES(1,2)
INSERT INTO foo VALUES(3,4)

INSERT INTO foo VALUES(1,2), (3,4)

INSERT ALL INTO foo VALUES(1,2) INTO foo VALUES(3,4)
  SELECT * FROM DUAL

INSERT ALL INTO foo VALUES(1,2) INTO bar VALUES(3,4)
  SELECT * FROM DUAL

//VALUES(1,2)(3,4)
INSERT ALL
  WHEN price < 10000 THEN
    INTO loworder
  WHEN price >= 10000 AND price < 50000 THEN
    INTO baseorder
  ELSE
    INTO highorder
  SELECT ordernum,price,customernum FROM order


//INSERT ALL WHEN THEN
UPDATE foo SET a = (SELECT MAX(b) FROM bar) WHERE i = 1

DELETE FROM foo WHERE a = ( SELECT a FROM bar
  WHERE b = 'deleted' )

UPDATE foo SET a = bar.c FROM bar WHERE foo.b = bar.b
DELETE FROM foo FROM bar
  WHERE foo.a = bar.b AND bar.c = 'deleted'

//UPDATE DELETE subquery UPDATE DELETE
SELECT sales FROM anualsales WHERE yaer = 2014
SELECT sales FROM anualsales WHERE year = 2015
SELECT sales FROM anualsales WHERE year = 2016

SELECT prepreyaer * sales, preyear * sales, thisyear * sales
  FROM yearsales,pibot WHERE yearsales.yaer = pibot.year

SELECT SUM(prepreyaer * sales), SUM(preyear * sales), SUM(thisyear * sales)
  FROM yaersales,pibot WHERE yearsales.year = pibot.year


//povot table SUM(CASE...) SUM(DECODE...)
SELECT SUM(CASE year WHEN 2016 THEN sale END),
  SUM(CASE year WHEN 2017 THEN sales END),
  SUM(CASE year WHEN 2018 THEN sales END)
  FROM yearsales

SELECT SUM(DECODE(year,2015,sales)),
  SUM(DECODE(year, 2016, sales)),
  SUM(DECODE(year, 2017,sales))
  FROM yearsales

//select list subquery
SELECT (SELECT COUNT(*) + 1 FROM evaluation WHERE sales.score < S.score ),S.name,S.score FROM evaluation S


//type CONVERT TO_CHAR,TO_NUMBER,TO_DATE
CONVERT(datetype{(length)}, expression[, style])

TO_CHAR(expression[, format[, 'nlsparams']])

SELECT * FROM foo WHERE CONVERT(varchar,i) LIKE '1%'
SELECT * FROM foo WHERE TO_CHAR(i) LIKE '1%'


//str + ||
SELECT s,t,s + t FROM foo
SELECT s,t,s || t FROM foo

SELECT s,t,RTRIM(s) + t FROM foo
SELECT s,t,RTRIM(s) || t FROM foo


//CREATE SEQUENCE
CREATE SEQUENCE s_foo START WITH 1

INSERT INTO foo(a) VALUES(s_foo.NEXTVAL)
INSERT INTO foo(a) VALUES(s_foo.NEXTVAL)
SELECT * FROM foo

CREATE SEQUENCE s_foo START WITH 1
INSERT INTO foo(a) VALUES(s_foo.NEXTVAL)
COMMIT -- NEXTVAL 1
SELECT * FROM foo



INSERT INTO foo(a) VALUES(s_foo.NEXTVAL)
ROLLBACK -- NEXTVAL 2
SELECT * FROM foo

INSERT INTO foo(a) VALUES(s_foo.NEXTVAL)
COMMIT -- NEXTVAL 3

//PRIMARY KEY
CREATE TABLE foo (
  a int not null CONSTRAINT bar PRIMARY KEY,
  b varchar(10)
)

ALTER TABLE foo ADD CONSTRAINT bar PRIMARY KEY (a,b)

CREATE TABLE foo (
  a int not null,
  b varchar(10) not null,
  CONSTRAINT bar PRIMARY KEY(a,b)
)

//FOREIGN KEY, REFERENCES tablename
CREATE TABLE foo (
  a int not null,
  b int not null,
  CONSTRAINT fkey_foo FOREIGN KEY(b) REFERENCES bar(a)
)

ALTER TABLE foo ADD CONSTRAINT fkey_foo
  FOREIGN KEY(b) REFERENCES bar(a)


SELECT a FROM bar

INSERT INTO foo VALUES(1, 4)
UPDATE foo SET b = 4 WHERE a = 1

SELECT * FROM foo

DELETE FROM bar WHERE a = 1
DELETE FROM bar WHERE a = 3


//DEFAULT default_value
CREATE TABLE foo (
  a int not null,
  b int null DEFAULT 1
)

INSERT INTO foo VALUES(1,99)
INSERT INTO foo(a) VALUES(2)
SELECT * FROM foo

CREATE TABLE foo (
  a NUMBER(4) NOT NULL,
  b NUMBER(4) DEFAULT 1 NULL
)


//CONSTRAINT CHECK
CREATE TABLE foo (
  code CHAR(4) NOT NULL,
  sub CHAR(1) CONSTRAINT chk_foo CRECK(sub = 'A' OR
    sub = 'B')
)

CREATE TABLE foo (
  code CHAR(4) NOT NULL,
  sub CHAR(1) CONSTRAINT chk_foo CHECK(sub IN
('A', 'B', 'P', 'Z'))
)

CREATE TABLE foo (
  code CHAR(4) NOT NULL,
  sub CHAR(1) NOT NULL,
  CONSTRAINT chk_foo CHECK(
    (SUBSTR(code,1,1)='1' AND sub IN ('A', 'B')) OR
    (SUBSTR(code,1,1)='2' AND sub IN ('P','Z'))
  )
)


//CREATE TABLE #temp; CREATE TABLE #temp
CREATE TABLE #temp (a int, b varchar(10))

SELECT x,SUM(a) FROM foo GROUP BY x
UNION
SELECT y,SUM(b) FROM bar GROUP BY y

SELECT x,a INTO #temp FROM foo
INSERT INTO #temp SELECT y,b FROM bar
SELECT x,SUM(a) FROM #temp GROUP BY x


//CREATE TEMPORARY TABLE
CREATE TEMPORARY TABLE temp (a int, b varchar(10))

//CREATE GLOBAL TEMPORARY TABLE
CREATE GLoBAL TEMPORARY TABLE temp(
a INTEGER, b INTEGER
);

INSERT INTO temp VALUES(1,2);

SELECT * FROM temp;

COMMIT;
SELECT * FROM temp;

CREATE GLOBAL TEMPORARY TABLE temp_session(
  a INTEGER, b INTEGER
) ON COMMIT PRESERVE ROWS;


//VACUUM, ANALYZE,UPDATE STATISTICS
SELECT * FROM foo WITH (INDEX(i_foo)) WHERE a = 1

SELECT /*+ INDEX(foo i_foo) */ * FROM foo WHERE a = 1

UPDATE STATISTICS foo

ANALYZE TABLE foo COMPUTE STATISTICS

VACUUM ANALYZE foo

//EXPLAIN PLAN, PLAN_TABLE,EXPLAIN,EXPLAIN
\RDBMS\ADMIN\UTLXPLN.SQL

EXPLAIN PLAIN FOR SELECT * FROM foo WHERE a=1

\RDBMS\ADMIN\UTLXPLP.SQL

EXPLAIN ALL FOR SELECT * FROM foo WHERE a = 1

EXPLAIN SELECT * FROM foo WHERE a = 1

EXPLAIN SELECT * FROM foo WHERE a = 1
NOTICE: QUERY PLAN:
Index Scan Using foo_pkey on foo (cost=0.00..4.82
  rows=1 width=28)
EXPLAIN



