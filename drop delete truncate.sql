-- Create a sample table for demonstration
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO employees (name, salary)
VALUES 
('Alice', 5000),
('Bob', 4500),
('Charlie', 7000),
('David', 6000);

-- 1. DELETE Example: Delete specific rows (e.g., salary < 5000)
DELETE FROM employees
WHERE salary < 5000;

-- 2. TRUNCATE Example: Remove all rows from the table but keep the structure
TRUNCATE TABLE employees;

-- 3. DROP Example: Drop the entire table structure and data
DROP TABLE employees;

-- 4. DROP DATABASE Example: (commented out for safety)
-- DROP DATABASE your_database_name;


/*
DELETE: Deletes rows where the salary is less than 5000, keeping the rest intact.
TRUNCATE: Removes all rows from the employees table, but the structure remains.
DROP: Drops the employees table, removing both the structure and data.
DROP DATABASE: This is commented out as dropping a database is a critical operation, but it would remove the entire database if executed.
*/
