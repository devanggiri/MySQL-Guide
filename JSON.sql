-- JSON_EXTRACT: Extracts data from a JSON string
SELECT JSON_EXTRACT('{"name": "John", "age": 30}', '$.name') AS name;

-- JSON_UNQUOTE: Removes quotes from a JSON value
SELECT JSON_UNQUOTE(JSON_EXTRACT('{"name": "John"}', '$.name')) AS unquoted_name;

-- JSON_ARRAY: Creates a JSON array
SELECT JSON_ARRAY('apple', 'banana', 'cherry') AS fruits_array;

-- JSON_OBJECT: Creates a JSON object
SELECT JSON_OBJECT('name', 'John', 'age', 30) AS json_object;
