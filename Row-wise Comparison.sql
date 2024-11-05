SELECT column1, ARRAY_AGG(column2) AS array_values
FROM table_name
GROUP BY column1;
--eg
SELECT order_id, ARRAY_AGG(product_id) AS products
FROM order_items
GROUP BY order_id;
