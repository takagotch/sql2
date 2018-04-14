//STRFTIME
//DATE,DATETIME,TIME
//sqlite

SELECT STRFTIME('%Y/%m/%d', 'now')

SELECT STRFTIME('%H:%M:%S', 'localtime')

SELECT STRFTIME('%Y/%m/%d', 'now', 'localtime', '1 day')

SELECT STRFTIME('%T/%m/%d', 'now', 'localtime',
  'start of month', '1 month', '-1 day')


---



