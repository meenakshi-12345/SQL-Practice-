-- Problem: Find Employees Earning Less Than Their City Average
-- Difficulty: Medium
-- Description:
-- Retrieve employees whose salary is below
-- the average salary of their city.

SELECT *
FROM employees e
WHERE e.salary < (
    SELECT AVG(salary)
    FROM employees b 
    WHERE e.city = b.city
);