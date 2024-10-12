-- Combined Triggers in MySQL
DELIMITER $$

-- BEFORE INSERT Trigger: Automatically set the created_at timestamp before inserting a new order
CREATE TRIGGER before_order_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
END $$

-- AFTER UPDATE Trigger: Log changes in the orders table after an update
CREATE TRIGGER after_order_update
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
    INSERT INTO order_logs (order_id, old_total, new_total, changed_at)
    VALUES (OLD.id, OLD.total, NEW.total, NOW());
END $$

-- BEFORE DELETE Trigger: Archive orders before they are deleted
CREATE TRIGGER before_order_delete
BEFORE DELETE ON orders
FOR EACH ROW
BEGIN
    INSERT INTO archived_orders (id, customer_id, total, created_at)
    VALUES (OLD.id, OLD.customer_id, OLD.total, OLD.created_at);
END $$

-- AFTER INSERT Trigger: Send a notification when a new order is placed
CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO notifications (order_id, message, sent_at)
    VALUES (NEW.id, CONCAT('A new order has been placed: Order #', NEW.id), NOW());
END $$

DELIMITER ;



/*
BEFORE INSERT Trigger (before_order_insert): Automatically sets the created_at field before an order is inserted into the orders table.
AFTER UPDATE Trigger (after_order_update): Logs the old and new total values of an order after it is updated, storing the log in the order_logs table.
BEFORE DELETE Trigger (before_order_delete): Archives the order details into an archived_orders table before the order is deleted from the orders table.
AFTER INSERT Trigger (after_order_insert): Creates a notification in the notifications table whenever a new order is inserted, with a message and timestamp.
*/
