-- Problem: Find Employees Not Present in Both Trainings
-- Difficulty: Medium
-- Description:
-- Retrieve employee IDs of employees who are NOT present
-- in both training_Q1 and training_Q2

SELECT emp_id
FROM employees

EXCEPT

SELECT emp_id
FROM training_Q1

INTERSECT

SELECT emp_id
FROM training_Q2;