SELECT column1, column2, SUM(value_column)
FROM table_name
GROUP BY GROUPING SETS (
    (column1),
    (column2),
    (column1, column2),
    ()
);
