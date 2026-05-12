-- Problem: Find Employees Scoring Above 70 in Both Quarters
-- Difficulty: Medium
-- Description:
-- Retrieve employees who scored more than 70
-- in both training_Q1 and training_Q2

SELECT *
FROM employees
WHERE emp_id IN (

    SELECT emp_id
    FROM training_Q1
    WHERE training_score > 70

    INTERSECT

    SELECT emp_id
    FROM training_Q2
    WHERE training_score > 70
);