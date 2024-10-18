-- custom function
-- structurr
DELIMITER //
CREATE FUNCTION function_name(parameters)
RETURNS data_type
DETERMINISTIC -- Ensures that the function always returns the same result for the same inputs
BEGIN
    -- Logic goes here
    RETURN result;
END //
DELIMITER ;



-- example

-- 1. Creating a basic function to return the sum of two numbers
DELIMITER //
CREATE FUNCTION add_numbers(a INT, b INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN a + b;
END //
DELIMITER ;

-- Usage Example for add_numbers function
SELECT add_numbers(5, 10) AS sum_result;

-- 2. Creating a function to calculate the total salary of an employee with bonus
DELIMITER //
CREATE FUNCTION calculate_total_salary(salary DECIMAL(10,2), bonus DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary + bonus;
END //
DELIMITER ;

-- Usage Example for calculate_total_salary function
SELECT calculate_total_salary(5000, 500) AS total_salary;

-- 3. Creating a function to check if salary is above a certain threshold
DELIMITER //
CREATE FUNCTION is_high_salary(salary DECIMAL(10,2), threshold DECIMAL(10,2))
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    IF salary > threshold THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END //
DELIMITER ;

-- Usage Example for is_high_salary function
SELECT is_high_salary(6000, 5000) AS is_high;
