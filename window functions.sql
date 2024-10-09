-- LAG: Accesses data from the previous row in the result set
SELECT column1, LAG(column1, 1) OVER (ORDER BY column2) AS previous_value
FROM table_name;

-- LEAD: Accesses data from the next row in the result set
SELECT column1, LEAD(column1, 1) OVER (ORDER BY column2) AS next_value
FROM table_name;

-- RANK: Assigns a rank to each row within a partition of a result set
SELECT column1, RANK() OVER (ORDER BY column2) AS rank_value
FROM table_name;

-- DENSE_RANK: Assigns a rank to each row within a partition of a result set, with no gaps
SELECT column1, DENSE_RANK() OVER (ORDER BY column2) AS dense_rank_value
FROM table_name;
