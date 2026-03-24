-- Problem: Active Policy Holders
-- Platform: SQL Practice / LeetCode
-- Difficulty: Easy
-- Description:
-- Find the number of policy holders who have made
-- at least 3 calls.

SELECT COUNT(*) 
FROM (
    SELECT policy_holder_id 
    FROM callers 
    GROUP BY policy_holder_id 
    HAVING COUNT(case_id) >= 3
) e;