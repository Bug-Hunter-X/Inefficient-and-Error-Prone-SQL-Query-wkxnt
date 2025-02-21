```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might return unexpected results if there are multiple employees in department 10 with salaries greater than 100000.  It's also inefficient if the `employees` table is large and lacks an index on `department_id` and `salary`.  Furthermore, there's no explicit error handling, which means issues with the database connection or table access may not be gracefully handled.