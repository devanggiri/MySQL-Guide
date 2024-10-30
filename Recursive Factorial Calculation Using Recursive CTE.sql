WITH RECURSIVE FactorialCTE AS (
    SELECT 1 AS n, 1 AS factorial
    UNION ALL
    SELECT n + 1, factorial * (n + 1)
    FROM FactorialCTE
    WHERE n < target_number
)
SELECT * FROM FactorialCTE;
