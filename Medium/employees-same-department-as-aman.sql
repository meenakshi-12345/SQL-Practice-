-- Problem: Find Employees in the Same Department as Aman
-- Difficulty: Easy-Medium
-- Description:
-- Retrieve all employees who work in the same department as 'Aman'
-- Exclude Aman from the result

SELECT *
FROM employees3
WHERE department = (
    SELECT department
    FROM employees3
    WHERE emp_name = 'Aman'
)
AND emp_name <> 'Aman'; 