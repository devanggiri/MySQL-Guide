-- CASE with multiple conditions: A more complex version of CASE
SELECT CASE 
    WHEN column1 > 10 THEN 'Greater than 10'
    WHEN column1 BETWEEN 5 AND 10 THEN 'Between 5 and 10'
    ELSE 'Less than 5'
END AS range_description
FROM table_name;

-- CASE with simple conditions
SELECT column1, 
    CASE column1 
        WHEN 1 THEN 'One'
        WHEN 2 THEN 'Two'
        ELSE 'Other'
    END AS number_description
FROM table_name;
