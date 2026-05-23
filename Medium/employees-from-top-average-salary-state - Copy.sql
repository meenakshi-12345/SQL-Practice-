-- Problem: Find Employees from State with Highest Average Salary
-- Difficulty: Medium
-- Description:
-- Retrieve all employees belonging to the state
-- that has the highest average salary.

SELECT *
FROM employees 
WHERE state IN (
    SELECT TOP 1 state
    FROM employees
    GROUP BY state 
    ORDER BY AVG(salary) DESC
);