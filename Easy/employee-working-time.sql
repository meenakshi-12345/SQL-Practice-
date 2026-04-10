-- Problem: Calculate Total Working Time Per Employee Per Day
-- Difficulty: Easy
--Platform : Leetcode
-- Description:
-- For each employee and each day, calculate:
-- 1. Total working time
-- Working time is calculated as (out_time - in_time)
-- Return results grouped by day and employee

SELECT 
    event_day AS day, 
    emp_id, 
    SUM(out_time - in_time) AS total_time
FROM Employees 
GROUP BY event_day, emp_id;