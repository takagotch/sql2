//COMMENT ON
//sp_addextendendproperty

COMMENT ON TABLE foo IS 'TABLE COMMENT'
COMMENT ON COLUMN foo.a IS 'COMMENT'


//oracle


//sql
sp_addextendedproperty @name = 'Description',
  @value = 'TABLE COMMENT',
  @leve10type = 'SCHEMA', @leve10name = 'dbo',
  @level1type = 'TABLE', @level1name = 'foo'


sp_addextendedproperty @name = 'Description',
  @value = 'COLUMN COMMENT',
  @level0type 'SCHEMA', @level0name = 'dbo',
  @level1type 'TABLE', @level1name = 'foo',
  @level2type 'COLUMN', @level2name = 'a'

//mysql
CREATE TABLE foo (
  a INTEGER COMMENT 'COLUMN A COMMENT'
) COMMENT = 'TABLE COMMENT'

//BEGIN

---




