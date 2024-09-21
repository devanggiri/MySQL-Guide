-- CREATE VIEW: Creates a view with a SELECT statement
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;

-- CREATE VIEW with JOIN: Creates a view that combines data from multiple tables
CREATE VIEW view_name AS
SELECT t1.column1, t2.column2
FROM table1 t1
JOIN table2 t2 ON t1.id = t2.id
WHERE t1.condition;

-- SELECT from a VIEW: Retrieves data from a view
SELECT * FROM view_name;

-- UPDATE a VIEW (only when the view allows updating)
UPDATE view_name
SET column1 = 'new_value'
WHERE condition;

-- DROP VIEW: Deletes the view from the database
DROP VIEW IF EXISTS view_name;

-- CREATE OR REPLACE VIEW: Updates a view if it exists, otherwise creates a new one
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;

-- ALTER VIEW: Modifies an existing view without recreating it
ALTER VIEW view_name AS
SELECT column1, column2, column3
FROM table_name
WHERE condition;

-- SHOW CREATE VIEW: Displays the SQL statement used to create the view
SHOW CREATE VIEW view_name;

-- WITH CHECK OPTION: Ensures that any INSERT or UPDATE on the view meets the view's WHERE condition
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition
WITH CHECK OPTION;


/*
CREATE VIEW: Defines a new view based on a SELECT query. A view is a virtual table based on the result set of the query.
CREATE VIEW with JOIN: Creates a view by joining multiple tables.
SELECT from VIEW: Retrieves data from the view as if querying a table.
UPDATE a VIEW: Updates the underlying table data through the view, if the view allows updates.
DROP VIEW: Removes the view from the database.
CREATE OR REPLACE VIEW: Updates an existing view or creates it if it doesn't exist.
ALTER VIEW: Modifies an existing view's query.
SHOW CREATE VIEW: Displays the CREATE statement used to define the view.
WITH CHECK OPTION: Ensures that any data inserted or updated through the view adheres to the view's WHERE condition.
*/
