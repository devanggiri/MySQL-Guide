-- Using a CTE to simplify complex queries
WITH ranked_sales AS (
    SELECT salesperson_id, sale_amount, RANK() OVER (ORDER BY sale_amount DESC) AS rank
    FROM sales
)
SELECT *
FROM ranked_sales
WHERE rank <= 5;
