-- ADDDATE: Adds a time interval to a date
SELECT ADDDATE(NOW(), INTERVAL 7 DAY) AS future_date;

-- SUBDATE: Subtracts a time interval from a date
SELECT SUBDATE(NOW(), INTERVAL 7 DAY) AS past_date;

-- WEEK: Returns the week number for a date
SELECT WEEK(NOW()) AS current_week;

-- LAST_DAY: Returns the last day of the month for a given date
SELECT LAST_DAY(NOW()) AS last_day_of_month;

-- MONTHNAME: Returns the name of the month for a given date
SELECT MONTHNAME(NOW()) AS month_name;
