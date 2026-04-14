-- Problem: Count Unique Leads and Partners Per Day
-- Difficulty: Easy
--Platform: LeetCode
-- Description:
-- For each date and car make, calculate:
-- 1. Number of unique leads
-- 2. Number of unique partners
-- Return the result grouped by date_id and make_name

SELECT 
    date_id, 
    make_name, 
    COUNT(DISTINCT lead_id) AS unique_leads, 
    COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales 
GROUP BY date_id, make_name;