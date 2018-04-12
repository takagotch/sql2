//MERGE

//MERGE UPSET UPDATE INSERT
MERGE INTO bar USING foo ON (foo.a = bar.a)
WHEN MATCHED THEN UPDATE SET bar.b foo.b, bar.c = foo.c
WHEN NOT MATCHED THEN INSERT(bar.a,bar.b,bar.c)
  VALUES(foo.a,foo.b,foo.c)


//WHEN MATCHED THEN
//WHEN NOT MATCHED THEN
MERGE INTO bar USING foo ON (foo.a = bar.a)
WHEN MATCHED THEN UPDATE SET bar.b = foo.b, bar.c = foo.c
WHEN NOT MATCHED THEN INSERT(bar.a,bar.b,bar.c)
  VALUES(foo.a,foo.b,foo.c)




