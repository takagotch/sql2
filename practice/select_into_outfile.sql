//mysql
//INTO OUTFILE

// /tmp/export.txt

SELECT * INTO OUTFILE '/tmp/export.txt'
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCOLOSED BY '*' LINES TERMINATED BY '\n'
  FROM foo


