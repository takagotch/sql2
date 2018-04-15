//EXTRACT
//DATEPART

SELECT a,EXTRACT(day FROM a) FROM foo

//mysql
YEAR
YEAR_MONTH
QUARTER
MONTH
WEEK
DAY
DAY_HOUR
DAY_MINITE
DAY_SECOND
DAY_MICROSECOND
HOUR
HOUR_MINUTE
HOUR_SECOND
HOUR_MICROSECOND
MINUTE
MINUTE_SECOND
MINUTE_MICROSECOND
SECOND
MICROSECOND

//psgl
millennium
century
decade
year
day
quater
month
dow
isodow
week
doy
epoch
hour
minute
second
milliseconds
microseconds
timezone
timezone_hour
timezone_minute

//oracle
YEAR
MONTH
HOUR
MINUTE
SECOND
TIMEZONE_HOUR
TIMEZONE_MINUTE
TIMEZONE_REGON
TIMEZONE_ABBR


//EXTRACT XML
//nodes
//oracle XPath /root/foo/bar
SELECT EXTRACT(c, '/root/foo/bar')
  FROM xml_sample
//sql XPath /root[1]/foo[1]/bar[1]
SELECT T.c.query('.') FROM xml_sample
  CROSS APPLY c.nodes('/root[1]/foo[1]/bar[1]') AS T(c)






----


