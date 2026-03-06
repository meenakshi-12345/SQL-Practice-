-- Problem: Swap Salary Gender
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Swap all 'f' values to 'm' and 'm' values to 'f'
-- in the sex column of the Salary table using a single update statement.

UPDATE Salary
SET sex = CASE 
            WHEN sex = 'f' THEN 'm'
            ELSE 'f'
          END;