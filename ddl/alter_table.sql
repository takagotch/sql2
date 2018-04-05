//psgl, mysql

ALTER TABLE foo ADD COLUMN c INTEGER

ALTER TABLE foo DROP COLUMN c

ALTER TABLE foo ALTER c SET DEFAULT 0

ALTER TABLE foo ADD CONSTRAINT pkey PRIMARY KEY(a, b)

ALTER TABLE foo ADD CONSTRAINT fkey FOREIGN KEY(a)
  REFERENCES bar(b)

ALTER TABLE foo DROP CONSTRAINT pkey

ALTER TABLE foo DROP DROP PRIMARY KEY

ALTER TABLE foo RENAME c TO new_c
ALTER TABLE foo CHANGE c new_c VARCHAR(30)

ALTER TABLE foo RENAME TO bar
ALTER TABLE foo RENAME AS bar


