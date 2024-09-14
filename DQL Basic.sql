SELECT DISTINCT column1, AGGREGATE_FUNCTION(column2)
FROM table1
INNER JOIN table2 ON table1.id = table2.id
WHERE condition
GROUP BY column1
HAVING AGGREGATE_FUNCTION(column2) > value
ORDER BY column1 ASC
LIMIT 10;


/* SELECT DISTINCT: Retrieves unique values from column1 and aggregates column2.
INNER JOIN: Combines rows from table1 and table2 based on a common id column.
WHERE: Filters records based on a condition.
GROUP BY: Groups the result by column1 for applying an aggregate function.
HAVING: Filters groups based on a condition applied to the aggregate function.
ORDER BY: Sorts the result by column1 in ascending order.
LIMIT: Limits the result to 10 rows.
*/
