-- Problem: Calculate Sum of Latitude and Longitude
-- Platform : HackerRank
-- Difficulty: Easy
-- Description:
-- Calculate:
-- 1. Sum of LAT_N
-- 2. Sum of LONG_W
-- Format both results to 2 decimal places

SELECT 
    CAST(SUM(LAT_N) AS DECIMAL(10,2)) AS lat, 
    CAST(SUM(LONG_W) AS DECIMAL(10,2)) AS lon
FROM STATION;