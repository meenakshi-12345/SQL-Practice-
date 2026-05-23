-- Problem: Find Departments with Minimum Salary Above 50000
-- Difficulty: Easy-Medium
-- Description:
-- Retrieve departments where the minimum salary
-- is greater than 50000.

SELECT 
    department, 
    MIN(salary) AS min_salary
FROM employees 
GROUP BY department
HAVING MIN(salary) > 50000;