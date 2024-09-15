-- INSERT: Adds new data into the table
INSERT INTO table_name (column1, column2, column3)
VALUES ('value1', 'value2', 'value3');

-- UPDATE: Modifies existing data in the table
UPDATE table_name
SET column1 = 'new_value'
WHERE condition;

-- DELETE: Removes data from the table
DELETE FROM table_name
WHERE condition;

-- REPLACE: Inserts new rows or replaces existing rows
REPLACE INTO table_name (column1, column2)
VALUES ('value1', 'value2');

-- INSERT INTO SELECT: Inserts rows from another table
INSERT INTO table_name1 (column1, column2)
SELECT column1, column2
FROM table_name2
WHERE condition;


/*
INSERT: Adds new rows to the table.
UPDATE: Modifies existing rows based on a condition.
DELETE: Deletes rows that meet a specified condition.
REPLACE: Inserts or replaces rows if they already exist.
INSERT INTO SELECT: Inserts rows from one table into another based on a condition.
*/
