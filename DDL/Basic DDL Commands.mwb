-- Creating a Database
CREATE DATABASE my_database;

-- Dropping a Database
DROP DATABASE my_database;

-- Creating a Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Altering a Table (Adding a column)
ALTER TABLE employees
ADD hire_date DATE;

-- Altering a Table (Modifying a column)
ALTER TABLE employees
MODIFY salary DECIMAL(12, 2);

-- Altering a Table (Dropping a column)
ALTER TABLE employees
DROP COLUMN hire_date;

-- Dropping a Table
DROP TABLE employees;

-- Renaming a Table
ALTER TABLE employees
RENAME TO staff;

-- Creating a Table with Foreign Key
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Truncate Table (Removing all rows but keeping the table structure)
TRUNCATE TABLE employees;

-- Creating an Index
CREATE INDEX idx_last_name ON employees (last_name);

-- Dropping an Index
DROP INDEX idx_last_name ON employees;

-- Creating a View
CREATE VIEW employee_view AS
SELECT first_name, last_name, department
FROM employees
WHERE salary > 50000;

-- Dropping a View
DROP VIEW employee_view;
