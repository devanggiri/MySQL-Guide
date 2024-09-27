-- MIN and MAX: Returns the minimum or maximum value from a column
SELECT MIN(column1) AS min_value, MAX(column1) AS max_value
FROM table_name;

-- COUNT: Returns the number of rows
SELECT COUNT(*) AS row_count
FROM table_name;

-- SUM: Returns the sum of a column's values
SELECT SUM(column1) AS total_sum
FROM table_name;

-- AVG: Returns the average value of a column
SELECT AVG(column1) AS average_value
FROM table_name;

-- GROUP_CONCAT: Concatenates values from multiple rows into a single string
SELECT GROUP_CONCAT(column1 SEPARATOR ', ') AS concatenated_values
FROM table_name
GROUP BY column2;
