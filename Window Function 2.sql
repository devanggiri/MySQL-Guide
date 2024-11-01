SELECT column1,
       FIRST_VALUE(column2) OVER (ORDER BY column3) AS first_value,
       LAST_VALUE(column2) OVER (ORDER BY column3) AS last_value
FROM table_name;


--Example: Get first and last sales per region:

SELECT region, 
       FIRST_VALUE(sales) OVER (PARTITION BY region ORDER BY date) AS first_sales,
       LAST_VALUE(sales) OVER (PARTITION BY region ORDER BY date) AS last_sales
FROM sales_data;
