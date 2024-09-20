-- ORDER BY: Sorts the result set by one or more columns in ascending (ASC) or descending (DESC) order
SELECT column1, column2
FROM table_name
ORDER BY column1 ASC, column2 DESC;

-- SORT rows based on an expression or calculation
SELECT column1, column2, (column2 - column1) AS difference
FROM table_name
ORDER BY difference DESC;

-- SORT rows using an alias
SELECT column1, column2, (column2 - column1) AS diff
FROM table_name
ORDER BY diff ASC;

-- ORDER BY with NULL values sorted last
SELECT column1, column2
FROM table_name
ORDER BY column1 IS NULL ASC, column2 DESC;

-- ORDER BY with multiple columns and custom sorting (e.g., specific column values first)
SELECT column1, column2
FROM table_name
ORDER BY (column1 = 'SpecificValue') DESC, column2 ASC;

-- LIMIT with ORDER BY: Sorts the result and limits the number of rows returned
SELECT column1, column2
FROM table_name
ORDER BY column2 DESC
LIMIT 5;

-- SORT rows using CASE statement for custom sorting logic
SELECT column1, column2
FROM table_name
ORDER BY 
  CASE 
    WHEN column1 = 'SpecificValue' THEN 1
    WHEN column1 = 'AnotherValue' THEN 2
    ELSE 3
  END, column2 ASC;

-- SORT rows within groups (PARTITION BY) using window functions
SELECT column1, column2, ROW_NUMBER() OVER (PARTITION BY column3 ORDER BY column2 DESC) AS row_num
FROM table_name;


/*
ORDER BY: Basic sorting of the result set by one or more columns. By default, ASC (ascending) is applied; use DESC for descending order.
Sorting by Expressions: You can sort based on calculated values (e.g., the difference between two columns).
Using Aliases for Sorting: Sort by aliases that result from calculations or other expressions.
NULL Handling in Sorting: Sorts NULL values as the last or first by using column IS NULL.
Custom Sorting: Uses logical conditions to sort specific values first, such as sorting certain column values (SpecificValue) to appear before others.
LIMIT with Sorting: Restricts the number of sorted rows returned.
CASE for Custom Sorting: Allows defining complex sorting logic by assigning order values based on specific conditions.
Window Function Sorting: Sorts within partitions, useful for ranked or grouped data.
*/
