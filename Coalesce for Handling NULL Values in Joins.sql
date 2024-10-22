SELECT COALESCE(table1.column1, table2.column2) AS column_name
FROM table1
LEFT JOIN table2 ON table1.id = table2.id;
