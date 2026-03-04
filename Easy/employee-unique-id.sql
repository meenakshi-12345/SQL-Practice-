-- Problem: Replace Employee ID With The Unique Identifier
-- Platform: LeetCode 
-- Difficulty: Easy
-- Description:
-- Show each employee's unique_id along with their name.
-- If an employee does not have a unique_id, return NULL.

SELECT 
    u.unique_id,
    e.name
FROM EmployeeUNI u
RIGHT JOIN Employees e
    ON u.id = e.id;