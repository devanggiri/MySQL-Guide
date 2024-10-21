-- INNER JOIN: Returns only the matching rows from both tables
SELECT table1.column1, table2.column2
FROM table1
INNER JOIN table2 ON table1.id = table2.id;

-- LEFT JOIN (or LEFT OUTER JOIN): Returns all rows from the left table and matching rows from the right table; if no match, NULL values are returned
SELECT table1.column1, table2.column2
FROM table1
LEFT JOIN table2 ON table1.id = table2.id;

-- RIGHT JOIN (or RIGHT OUTER JOIN): Returns all rows from the right table and matching rows from the left table; if no match, NULL values are returned
SELECT table1.column1, table2.column2
FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;

-- FULL JOIN (or FULL OUTER JOIN): Returns all rows when there is a match in either left or right table; MySQL doesn't directly support FULL OUTER JOIN, but you can simulate it using UNION
SELECT table1.column1, table2.column2
FROM table1
LEFT JOIN table2 ON table1.id = table2.id
UNION
SELECT table1.column1, table2.column2
FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;

-- CROSS JOIN: Returns the Cartesian product of both tables (every row from the first table is combined with every row from the second table)
SELECT table1.column1, table2.column2
FROM table1
CROSS JOIN table2;

-- SELF JOIN: Joins a table with itself (requires table aliases)
SELECT a.column1, b.column1
FROM table_name a, table_name b
WHERE a.id = b.parent_id;

-- LATERAL JOIN
SELECT column1, column2, subquery_result.column3
FROM table_name
CROSS APPLY (SELECT column3 FROM another_table WHERE condition) AS subquery_result;



/*
INNER JOIN: Returns rows that have matching values in both tables.
LEFT JOIN: Returns all rows from the left table, even if there are no matches in the right table (returns NULL for non-matching right rows).
RIGHT JOIN: Returns all rows from the right table, even if there are no matches in the left table (returns NULL for non-matching left rows).
FULL JOIN: Returns rows when there is a match in either left or right table. Since MySQL doesn’t support it natively, it's simulated using UNION.
CROSS JOIN: Produces a Cartesian product of rows from the joined tables.
SELF JOIN: Joins the table with itself using aliases to compare rows within the same table.
*/
