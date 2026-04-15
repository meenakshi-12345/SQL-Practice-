-- Problem: Identify Low-Engagement Long Sessions
-- Difficulty: Hard
-- Platform: LeetCode
-- Description:
-- Identify sessions where users spent significant time but showed low engagement.
-- For each session, calculate:
-- 1. Session duration (in minutes)
-- 2. Number of scrolls
-- Include only sessions that:
-- - Last more than 30 minutes
-- - Have at least 5 scroll events
-- - Have click-to-scroll ratio < 0.20
-- - Have no purchases

WITH session_stats AS (
    SELECT 
        session_id,
        user_id,
        MIN(event_timestamp) AS start_time,
        MAX(event_timestamp) AS end_time,
        
        COUNT(CASE WHEN event_type = 'scroll' THEN 1 END) AS scroll_count,
        COUNT(CASE WHEN event_type = 'click' THEN 1 END) AS click_count,
        COUNT(CASE WHEN event_type = 'purchase' THEN 1 END) AS purchase_count
    FROM app_events
    GROUP BY session_id, user_id
)

SELECT 
    session_id,
    user_id,
    EXTRACT(EPOCH FROM (end_time - start_time)) / 60 AS session_duration_minutes,
    scroll_count
FROM session_stats
WHERE 
    EXTRACT(EPOCH FROM (end_time - start_time)) / 60 > 30
    AND scroll_count >= 5
    AND (click_count * 1.0 / scroll_count) < 0.20
    AND purchase_count = 0
ORDER BY scroll_count DESC, session_id ASC;