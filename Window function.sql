-- ROW_NUMBER(): Assigns a unique sequential number to each row within a partition
SELECT column1, ROW_NUMBER() OVER (PARTITION BY column2 ORDER BY column3) AS row_num
FROM table_name;

-- RANK(): Assigns a rank to each row within a partition, with gaps for ties
SELECT column1, RANK() OVER (PARTITION BY column2 ORDER BY column3) AS rank
FROM table_name;

-- DENSE_RANK(): Similar to RANK(), but without gaps for ties
SELECT column1, DENSE_RANK() OVER (PARTITION BY column2 ORDER BY column3) AS dense_rank
FROM table_name;

-- NTILE(n): Divides the result set into 'n' equal parts and assigns a bucket number to each row
SELECT column1, NTILE(4) OVER (ORDER BY column2) AS ntile_bucket
FROM table_name;

-- LAG(): Returns the value from the previous row within the same result set partition
SELECT column1, column2, LAG(column2, 1) OVER (ORDER BY column3) AS previous_value
FROM table_name;

-- LEAD(): Returns the value from the next row within the same result set partition
SELECT column1, column2, LEAD(column2, 1) OVER (ORDER BY column3) AS next_value
FROM table_name;

-- FIRST_VALUE(): Returns the first value in an ordered partition of rows
SELECT column1, FIRST_VALUE(column2) OVER (PARTITION BY column3 ORDER BY column4) AS first_val
FROM table_name;

-- LAST_VALUE(): Returns the last value in an ordered partition of rows
SELECT column1, LAST_VALUE(column2) OVER (PARTITION BY column3 ORDER BY column4 ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_val
FROM table_name;

-- SUM(): Calculates the cumulative sum over a partition or the entire result set
SELECT column1, SUM(column2) OVER (PARTITION BY column3 ORDER BY column4) AS cumulative_sum
FROM table_name;

-- AVG(): Calculates the cumulative average over a partition or the entire result set
SELECT column1, AVG(column2) OVER (PARTITION BY column3 ORDER BY column4) AS cumulative_avg
FROM table_name;

-- COUNT(): Counts the cumulative number of rows over a partition or the entire result set
SELECT column1, COUNT(column2) OVER (PARTITION BY column3 ORDER BY column4) AS cumulative_count
FROM table_name;


/*
Explanation:
ROW_NUMBER(): Assigns a unique row number to each row within the partition of a result set.
RANK(): Assigns a rank to each row within the partition of a result set, with gaps in rank when there are ties.
DENSE_RANK(): Similar to RANK(), but without gaps in rank values when there are ties.
NTILE(n): Divides rows in the result set into n number of buckets.
LAG(): Accesses data from the previous row in the same result set partition.
LEAD(): Accesses data from the next row in the same result set partition.
FIRST_VALUE(): Returns the first value in a partition.
LAST_VALUE(): Returns the last value in a partition (note the ROWS clause ensures proper behavior).
SUM(), AVG(), COUNT(): Calculate cumulative sum, average, or count over a partition or entire result set.
*/
