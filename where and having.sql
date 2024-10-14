/*
WHERE: Filters rows before grouping or aggregation.
HAVING: Filters aggregated results after grouping or aggregation.
*/

-- Create a sample table for demonstration
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO employees (name, department, salary)
VALUES 
('Alice', 'HR', 5000),
('Bob', 'HR', 4500),
('Charlie', 'IT', 7000),
('David', 'IT', 6000),
('Eve', 'Marketing', 5500),
('Frank', 'Marketing', 3000);

-- WHERE Example: Filter employees with a salary greater than 5000
SELECT name, department, salary
FROM employees
WHERE salary > 5000;
/*
Filters rows before any grouping or aggregation occurs.
Only employees with a salary greater than 5000 are selected.
Use Case: Filters individual rows based on specific conditions, applied before aggregation.
*/


-- HAVING Example: Group by department and filter departments with total salary greater than 10000
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 10000;
/*
Filters rows after the GROUP BY operation.
Groups employees by department, then filters departments with a total salary greater than 10,000.
Use Case: Filters aggregated data, applied after grouping or aggregation (e.g., SUM, COUNT).
*/
