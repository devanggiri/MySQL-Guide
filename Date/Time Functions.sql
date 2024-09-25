-- NOW: Returns the current date and time
SELECT NOW() AS current_time;

-- CURDATE and CURTIME: Returns the current date and time separately
SELECT CURDATE() AS current_date, CURTIME() AS current_time;

-- DATE_FORMAT: Formats a date or time according to a specified format
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s') AS formatted_date_time;

-- DATE_ADD and DATE_SUB: Adds or subtracts intervals from a date
SELECT DATE_ADD(NOW(), INTERVAL 5 DAY) AS future_date, DATE_SUB(NOW(), INTERVAL 5 DAY) AS past_date;

-- DATEDIFF: Returns the number of days between two dates
SELECT DATEDIFF('2024-12-31', '2024-01-01') AS date_difference;

-- EXTRACT: Extracts a part of a date (e.g., year, month, day)
SELECT EXTRACT(YEAR FROM NOW()) AS current_year;
