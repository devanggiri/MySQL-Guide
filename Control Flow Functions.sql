-- IF: Returns a value based on a condition
SELECT IF(1 > 0, 'True', 'False') AS if_result;

-- IFNULL: Returns a value if the expression is NULL, otherwise returns the expression
SELECT IFNULL(NULL, 'No Value') AS ifnull_result;

-- CASE: A flexible conditional logic function
SELECT CASE
    WHEN column1 > 100 THEN 'High'
    WHEN column1 > 50 THEN 'Medium'
    ELSE 'Low'
  END AS category
FROM table_name;
