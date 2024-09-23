-- CONCAT: Concatenates two or more strings
SELECT CONCAT('Hello', ' ', 'World') AS greeting;

-- LENGTH: Returns the length of a string
SELECT LENGTH('Hello') AS string_length;

-- LOWER and UPPER: Converts strings to lowercase or uppercase
SELECT LOWER('HELLO') AS lower_case, UPPER('hello') AS upper_case;

-- SUBSTRING: Extracts a portion of a string
SELECT SUBSTRING('Hello World', 1, 5) AS sub_str;

-- TRIM: Removes leading and trailing spaces from a string
SELECT TRIM('  Hello  ') AS trimmed_str;

-- REPLACE: Replaces occurrences of a substring
SELECT REPLACE('Hello World', 'World', 'SQL') AS replaced_str;

-- LEFT and RIGHT: Returns a specific number of characters from the left or right of the string
SELECT LEFT('Hello', 2) AS left_str, RIGHT('Hello', 3) AS right_str;
