WITH RECURSIVE cte_name AS (
    SELECT column_name 
    FROM table_name
    WHERE condition
    
    UNION ALL
    
    SELECT column_name 
    FROM table_name
    JOIN cte_name ON condition
)
SELECT * 
FROM cte_name;
