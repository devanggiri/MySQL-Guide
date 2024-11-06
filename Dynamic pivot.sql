SELECT column1,
       SUM(CASE WHEN column2 = 'value1' THEN column3 ELSE 0 END) AS value1_total,
       SUM(CASE WHEN column2 = 'value2' THEN column3 ELSE 0 END) AS value2_total
FROM table_name
GROUP BY column1;
--eg
SELECT year,
       SUM(CASE WHEN month = 'January' THEN sales ELSE 0 END) AS January_sales,
       SUM(CASE WHEN month = 'February' THEN sales ELSE 0 END) AS February_sales
FROM sales_data
GROUP BY year;
