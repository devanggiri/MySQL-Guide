SELECT column_name
FROM table_name t1
WHERE NOT EXISTS (
    SELECT 1
    FROM another_table t2
    WHERE t1.column = t2.column
);
