/*
Key Difference:
GROUP BY: Used for aggregation (e.g., summing, counting) based on one or more columns.
ORDER BY: Used for sorting the result set either in ascending or descending order, without affecting aggregation.
*/

-- Create a sample table for demonstration
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    total_sales DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO sales (product_name, category, quantity, total_sales)
VALUES 
('Product A', 'Electronics', 10, 500.00),
('Product B', 'Electronics', 5, 300.00),
('Product C', 'Furniture', 8, 700.00),
('Product D', 'Furniture', 12, 900.00),
('Product E', 'Clothing', 20, 400.00),
('Product F', 'Clothing', 15, 300.00);

-- GROUP BY Example: Group data by category and sum the total sales in each category
SELECT category, SUM(total_sales) AS total_sales_by_category
FROM sales
GROUP BY category;
/*
Groups the rows by the category column.
Calculates the sum of total_sales for each category.
Use Case: Summarizes or aggregates data based on a column (e.g., by category).
*/


-- ORDER BY Example: Order data by total sales in descending order
SELECT product_name, total_sales
FROM sales
ORDER BY total_sales DESC;
/*
Orders the result set by total_sales in descending order (DESC).
Does not group the data, but simply sorts the rows based on the column specified.
Use Case: Sorts data without aggregation, either ascending (ASC) or descending (DESC).
*/
