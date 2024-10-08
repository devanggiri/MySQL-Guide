-- Prepare a statement
PREPARE stmt FROM 'SELECT * FROM table_name WHERE column1 = ?';
SET @value = 'SomeValue';

-- Execute the prepared statement
EXECUTE stmt USING @value;

-- Deallocate the prepared statement
DEALLOCATE PREPARE stmt;
