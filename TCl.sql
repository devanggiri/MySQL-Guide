-- START TRANSACTION: Begins a new transaction
START TRANSACTION;

-- COMMIT: Saves all changes made during the current transaction
COMMIT;

-- ROLLBACK: Undoes all changes made during the current transaction
ROLLBACK;

-- SAVEPOINT: Sets a point within the current transaction to which you can later roll back
SAVEPOINT savepoint_name;

-- ROLLBACK TO SAVEPOINT: Rolls back the transaction to a previously defined savepoint
ROLLBACK TO SAVEPOINT savepoint_name;

-- RELEASE SAVEPOINT: Removes a savepoint from the transaction
RELEASE SAVEPOINT savepoint_name;

/*
Explanation:
START TRANSACTION: Initiates a new transaction block.
COMMIT: Permanently saves all changes made during the transaction.
ROLLBACK: Reverts all changes made during the transaction.
SAVEPOINT: Creates a named point in the transaction to roll back to if needed.
ROLLBACK TO SAVEPOINT: Rolls back the transaction to the specified savepoint.
RELEASE SAVEPOINT: Removes the specified savepoint from the transaction.
*/
