-- Problem: Calculate Confirmation Rate
-- Platform: Leetcode
-- Difficulty: Medium
-- Description:
-- For each user, calculate the confirmation rate.
-- Confirmation rate = confirmed actions / total confirmation attempts
-- Return 0 if a user has no confirmation records

SELECT 
    s.user_id, 
    ROUND(
        COALESCE(
            COUNT(CASE WHEN c.action = 'confirmed' THEN 1 END)::decimal
            / NULLIF(COUNT(c.action), 0),
        0),
    2) AS confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c 
    ON s.user_id = c.user_id
GROUP BY s.user_id;