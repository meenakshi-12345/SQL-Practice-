-- Problem: Find Customers Not Referred by ID 2
-- platform: Leetcode
-- Difficulty: Easy
-- Description:
-- Retrieve the names of customers who:
-- 1. Were not referred by customer with id = 2
-- 2. Or have no referee_id (NULL)

SELECT 
    name
FROM Customer
WHERE 
    referee_id != 2 
    OR referee_id IS NULL;