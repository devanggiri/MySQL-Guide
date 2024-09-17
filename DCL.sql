-- GRANT: Gives specific privileges to users
GRANT SELECT, INSERT, UPDATE ON database_name.table_name TO 'username'@'host';

-- REVOKE: Removes specific privileges from users
REVOKE SELECT, INSERT ON database_name.table_name FROM 'username'@'host';

-- SHOW GRANTS: Displays the privileges granted to a user
SHOW GRANTS FOR 'username'@'host';




/*
Explanation:
GRANT: Assigns specific permissions (like SELECT, INSERT, UPDATE) to a user for a particular database or table.
REVOKE: Removes previously granted permissions from a user.
SHOW GRANTS: Displays the current privileges assigned to a specific user.
*/
