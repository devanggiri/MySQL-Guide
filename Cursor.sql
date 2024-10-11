-- Creating a stored procedure with a cursor
DELIMITER $$

CREATE PROCEDURE process_orders()
BEGIN
    -- Declare variables to hold data from the cursor
    DECLARE done INT DEFAULT 0;
    DECLARE order_id INT;
    DECLARE order_total DECIMAL(10, 2);

    -- Declare the cursor for retrieving data from the orders table
    DECLARE order_cursor CURSOR FOR
        SELECT id, total FROM orders WHERE status = 'pending';

    -- Declare a handler for when the cursor reaches the end of the result set
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open the cursor
    OPEN order_cursor;

    -- Start looping through the rows returned by the cursor
    read_loop: LOOP
        -- Fetch the current row data into the variables
        FETCH order_cursor INTO order_id, order_total;
        
        -- Exit the loop if there are no more rows
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- Process each order (for example, mark it as processed)
        UPDATE orders SET status = 'processed' WHERE id = order_id;

        -- You can perform any other operations here (e.g., log the order details, calculate discounts, etc.)
    END LOOP;

    -- Close the cursor after processing all rows
    CLOSE order_cursor;
END $$

DELIMITER ;










/*
DECLARE Cursor: Defines a cursor (order_cursor) for selecting specific rows (pending orders) from the orders table.
FETCH: Retrieves the values of the current row into variables (order_id, order_total).
LOOP: Processes each row fetched by the cursor and performs an update operation (marks orders as processed).
EXIT Condition: The loop terminates when all rows have been fetched (handled by the done variable and LEAVE).
CLOSE Cursor: Closes the cursor when finished processing.

How to Use the Procedure:
-- Call the stored procedure
CALL process_orders();

Cursor Declaration: DECLARE order_cursor CURSOR FOR ...
Handler for End of Result Set: DECLARE CONTINUE HANDLER FOR NOT FOUND ...
Cursor Operations: OPEN, FETCH, and CLOSE.
Cursors are useful when you need to process query results row by row in MySQL, especially when performing complex logic or updates.

*/
