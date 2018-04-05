//DROP VIEW

CREATE VIEW v_foo AS SELECT a,b FROM foo

SELECT * FROM v_foo

CREATE VIEW v_foo(viewcolumn1, viewcolumn2) AS
  SELECT foo.a.bar.b FROM foo, bar WHERE foo.a = bar.a


