-- Problem: Find Employees with Low Training Scores
-- Difficulty: Medium
-- Description:
-- Retrieve employee names who:
-- 1. Scored less than 60 in training_Q2
-- 2. Have names ending with a vowel

SELECT 
    emp_name
FROM employees
WHERE emp_id IN (
    SELECT emp_id
    FROM training_Q2
    WHERE training_score < 60
)
AND (
    emp_name LIKE '%A'
    OR emp_name LIKE '%E'
    OR emp_name LIKE '%I'
    OR emp_name LIKE '%O'
    OR emp_name LIKE '%U'
);