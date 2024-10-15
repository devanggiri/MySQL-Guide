SELECT column_name
FROM table_name t1
WHERE N - 1 = (
    SELECT COUNT(DISTINCT column_name)
    FROM table_name t2
    WHERE t2.column_name > t1.column_name
);


/*
column_name: The column where you want to find the N-th highest value.
table_name: The table that contains the data.
N: The rank you want to retrieve (e.g., 1 for the highest, 2 for the second highest, etc.).
Correlated Subquery: The subquery counts how many distinct values in the column_name are greater than the current row's value in the outer query. The outer query selects the value where the count matches N-1.
*/
