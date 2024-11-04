SELECT column1, ARRAY_AGG(column2) AS array_values
FROM table_name
GROUP BY column1;
