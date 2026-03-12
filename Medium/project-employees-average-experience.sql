-- Problem: Project Employees I
-- Platform: LeetCode
-- Difficulty: Medium
-- Description:
-- Find the average experience years of employees
-- working on each project. Round the result to 2 decimal places.

SELECT 
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e 
    ON p.employee_id = e.employee_id
GROUP BY p.project_id;