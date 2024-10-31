SELECT column1, column2, SUM(value_column)
FROM table_name
GROUP BY ROLLUP(column1, column2);
