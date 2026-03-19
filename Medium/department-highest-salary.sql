-- Problem: Department Highest Salary
-- Platform:  LeetCode
-- Difficulty: Medium
-- Description:
-- Find employees who have the highest salary in each department.
-- Return the department name, employee name, and salary.

SELECT 
    d.name AS Department, 
    e.name AS Employee, 
    e.salary AS Salary
FROM Employee e
JOIN Department d 
    ON e.departmentId = d.id
WHERE (e.salary, e.departmentId) IN (
    SELECT 
        MAX(e.salary), 
        e.departmentId
    FROM Employee e
    GROUP BY e.departmentId
);