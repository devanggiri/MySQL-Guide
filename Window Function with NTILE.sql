SELECT column_name, NTILE(N) OVER (ORDER BY column_name) AS bucket
FROM table_name;
