-- Problem: Employee Bonus
-- Platform: LeetCode style
-- Difficulty: Easy
-- Description:
-- Retrieve the name and bonus of employees whose bonus
-- is less than 1000 or who do not have a bonus.

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;