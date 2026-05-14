-- Problem: Find Employees Earning Below Department Average
-- Difficulty: Medium
-- Description:
-- Retrieve employees whose salary is below
-- the average salary of their department.

SELECT *
FROM employees3 e1
JOIN (
    SELECT 
        department, 
        AVG(salary) AS avg_salary
    FROM employees3
    GROUP BY department
) AS e2
ON e1.department = e2.department
WHERE e1.salary < e2.avg_salary;