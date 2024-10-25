SELECT column1,
       LEAD(column2, 1) OVER (ORDER BY column3) AS next_value,
       LAG(column2, 1) OVER (ORDER BY column3) AS previous_value
FROM table_name;
