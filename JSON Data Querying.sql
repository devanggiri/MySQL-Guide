SELECT column1, column2->>'json_key' AS json_value
FROM table_name;
--eg
SELECT order_id, details->>'customer_name' AS customer_name
FROM orders;
