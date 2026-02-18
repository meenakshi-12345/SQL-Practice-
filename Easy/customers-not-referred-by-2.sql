-- Problem: Customers Not Referred by ID 2
-- Platform: LeetCode 
-- Difficulty: Easy
-- Description:
-- Retrieve the names of customers whose referee_id is not equal to 2.
-- Include customers whose referee_id is NULL.

SELECT name
FROM customer
WHERE referee_id != 2
   OR referee_id IS NULL;
