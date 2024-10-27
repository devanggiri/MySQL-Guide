PREPARE stmt FROM 'SELECT column_name FROM table_name WHERE condition = ?';
EXECUTE stmt USING @variable;
DEALLOCATE PREPARE stmt;
