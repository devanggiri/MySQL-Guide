WITH RankCTE AS (
    SELECT column1, 
           column2, 
           DENSE_RANK() OVER (PARTITION BY column3 ORDER BY column2 DESC) AS dense_rank
    FROM table_name
)
SELECT * FROM RankCTE WHERE dense_rank = N;
 -- example
WITH SalaryRank AS (
    SELECT department_id, employee_name, 
           DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
    FROM employees
)
SELECT * FROM SalaryRank WHERE rank = 2;
