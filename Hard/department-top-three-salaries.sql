-- Problem: Department Top Three Salaries
-- Platform: LeetCode
-- Difficulty: Hard
-- Description:
-- Retrieve the top three highest distinct salaries for each department.
-- Return the department name, employee name, and salary.
-- If multiple employees have the same salary, include all of them.

WITH CTE AS (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (
            PARTITION BY d.name
            ORDER BY e.salary DESC
        ) AS rnk
    FROM Employee e
    JOIN Department d 
        ON e.departmentId = d.id
)

SELECT Department, Employee, Salary
FROM CTE
WHERE rnk <= 3;