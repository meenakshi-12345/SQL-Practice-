-- Problem: Find Employees with Project Score Higher Than HR Maximum
-- Difficulty: Medium
-- Description:
-- Retrieve employee names whose project score is greater than
-- the maximum project score achieved by employees in the HR department.

SELECT 
    emp_name
FROM employees3
WHERE emp_id IN (
    SELECT emp_id
    FROM projects
    WHERE project_score > (
        SELECT MAX(project_score)
        FROM projects
        WHERE emp_id IN (
            SELECT emp_id
            FROM employees3
            WHERE department = 'HR'
        )
    )
);