-- Problem: Find Employees with Low or No Bonus
-- Difficulty: Easy
-- Platform: LeetCode
-- Description:
-- Retrieve employee names and their bonus.
-- Include:
-- 1. Employees with bonus less than 1000
-- 2. Employees with no bonus (NULL)

SELECT 
    e.name, 
    b.bonus
FROM Employee e 
LEFT JOIN Bonus b 
    ON e.empId = b.empId 
WHERE 
    b.bonus < 1000 
    OR b.bonus IS NULL;