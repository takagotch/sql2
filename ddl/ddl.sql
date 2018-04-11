//sql
if exists (select * from sysobjects
      where id = object_id('dbo.foo')
      and OBJECTPROPERTY(id, 'IsUserTable') = 1)
      drop table dbo.foo


//mysql
DROP TABLE IF EXISTS foo
CREATE TABLE foo (...)





