SELECT column1, DENSE_RANK() OVER (PARTITION BY column2 ORDER BY column3) AS rank
FROM table_name;
