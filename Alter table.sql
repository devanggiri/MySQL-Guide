-- ADD COLUMN: Adds a new column to the table
ALTER TABLE table_name
ADD column_name datatype;

-- ADD COLUMN with constraints: Adds a new column with a NOT NULL constraint
ALTER TABLE table_name
ADD column_name datatype NOT NULL;

-- ADD MULTIPLE COLUMNS: Adds more than one column to the table at once
ALTER TABLE table_name
ADD column1 datatype, 
ADD column2 datatype;

-- DROP COLUMN: Removes a column from the table
ALTER TABLE table_name
DROP COLUMN column_name;

-- MODIFY COLUMN: Changes the datatype or other attributes of a column
ALTER TABLE table_name
MODIFY column_name new_datatype;

-- MODIFY COLUMN to make it NOT NULL
ALTER TABLE table_name
MODIFY column_name datatype NOT NULL;

-- RENAME COLUMN: Renames an existing column
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;

-- CHANGE COLUMN: Changes the name and datatype of an existing column
ALTER TABLE table_name
CHANGE old_column_name new_column_name new_datatype;

-- RENAME TABLE: Renames the table
ALTER TABLE table_name
RENAME TO new_table_name;

-- ADD PRIMARY KEY: Adds a primary key constraint to a column
ALTER TABLE table_name
ADD PRIMARY KEY (column_name);

-- DROP PRIMARY KEY: Removes the primary key constraint
ALTER TABLE table_name
DROP PRIMARY KEY;

-- ADD FOREIGN KEY: Adds a foreign key constraint to a column
ALTER TABLE table_name
ADD CONSTRAINT fk_name FOREIGN KEY (column_name) REFERENCES other_table(column_name);

-- DROP FOREIGN KEY: Removes a foreign key constraint
ALTER TABLE table_name
DROP FOREIGN KEY fk_name;

-- ADD UNIQUE: Adds a unique constraint to a column
ALTER TABLE table_name
ADD UNIQUE (column_name);

-- DROP UNIQUE: Removes the unique constraint from a column
ALTER TABLE table_name
DROP INDEX column_name;

-- ADD INDEX: Adds an index to a column to improve query performance
ALTER TABLE table_name
ADD INDEX index_name (column_name);

-- DROP INDEX: Removes an index from a column
ALTER TABLE table_name
DROP INDEX index_name;


/*
ADD COLUMN: Adds a new column to an existing table.
ADD MULTIPLE COLUMNS: Allows adding multiple columns at once.
DROP COLUMN: Deletes a column from the table.
MODIFY COLUMN: Changes the datatype or other attributes (e.g., NOT NULL) of an existing column.
RENAME COLUMN: Renames a column.
CHANGE COLUMN: Renames and alters the datatype of a column in one command.
RENAME TABLE: Renames the entire table.
ADD/DROP PRIMARY KEY: Adds or removes the primary key constraint.
ADD/DROP FOREIGN KEY: Adds or removes a foreign key constraint to ensure referential integrity.
ADD/DROP UNIQUE: Adds or removes the unique constraint, ensuring no duplicate values.
ADD/DROP INDEX: Creates or removes an index on a column to enhance query performance.
*/
