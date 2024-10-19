SELECT table1.column1, 
       table2.column2, 
       table1.column3 * table2.column4 AS combined_value
FROM table1
CROSS JOIN table2;
