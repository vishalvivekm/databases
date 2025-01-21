SQL transaction in MySQL using START TRANSACTION, SAVEPOINT, ROLLBACK, and COMMIT:

```sql
-- Start a new transaction
START TRANSACTION;

-- Insert a new record into the table
INSERT INTO life_savings (id, name, account_balance) 
VALUES (149, 'Vivek', 5000000);

-- Create a savepoint
SAVEPOINT sp1;

-- Update the account balance
UPDATE life_savings 
SET account_balance = 6000000 
WHERE name = 'Vivek';

-- Roll back to the savepoint
ROLLBACK TO SAVEPOINT sp1;

-- Delete a record
DELETE FROM life_savings 
WHERE name = 'Vivek';

-- Commit the transaction
COMMIT;

```

Explanation:

1. START TRANSACTION: Begins the transaction.


2. INSERT: Adds a new record to the life_savings table.


3. SAVEPOINT sp1: Marks a point within the transaction to which you can roll back.


4. UPDATE: Updates a record.


5. ROLLBACK TO SAVEPOINT sp1: Undoes all changes after the savepoint sp1, reverting the update.


6. DELETE: Deletes the record.


7. COMMIT: Finalizes all changes made in the transaction.



