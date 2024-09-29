-- COALESCE: Returns the first non-NULL value in the list
SELECT COALESCE(NULL, NULL, 'First non-null') AS coalesce_value;

-- NULLIF: Returns NULL if two expressions are equal, otherwise returns the first expression
SELECT NULLIF(5, 5) AS nullif_result;

-- SLEEP: Pauses execution for a specified number of seconds
SELECT SLEEP(2); -- Pauses for 2 seconds
