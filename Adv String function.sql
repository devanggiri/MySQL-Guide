-- ASCII: Returns the ASCII value of the first character of a string
SELECT ASCII('A') AS ascii_value;

-- CHAR_LENGTH: Returns the length of a string in terms of character count
SELECT CHAR_LENGTH('Hello') AS char_length;

-- REPEAT: Repeats a string a specified number of times
SELECT REPEAT('SQL', 3) AS repeated_str;

-- REVERSE: Reverses a string
SELECT REVERSE('Hello') AS reversed_str;

-- LOCATE: Returns the position of the first occurrence of a substring
SELECT LOCATE('l', 'Hello') AS first_occurrence;

-- INSTR: Returns the position of the first occurrence of a substring, same as LOCATE
SELECT INSTR('Hello', 'l') AS instr_position;

-- LPAD and RPAD: Pads a string on the left or right with a specified character
SELECT LPAD('123', 5, '0') AS left_padded, RPAD('123', 5, '0') AS right_padded;

-- LCASE and UCASE: Converts strings to lowercase or uppercase (alternate methods for LOWER and UPPER)
SELECT LCASE('HELLO') AS lower_case, UCASE('hello') AS upper_case;
