```sql
-- Improved query with error handling and indexing considerations

-- Add indexes for better query performance (if not already present)
CREATE INDEX idx_department_salary ON employees (department_id, salary);

BEGIN TRANSACTION;

SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;

-- Error handling
IF @@ERROR <> 0
BEGIN
    -- Log the error or take appropriate action
    RAISERROR('Error executing query', 16, 1);
    ROLLBACK TRANSACTION;
END
ELSE
BEGIN
    COMMIT TRANSACTION;
END;
```