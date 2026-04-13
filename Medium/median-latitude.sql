-- Problem: Find Median Latitude
-- Difficulty: Medium
-- Platform: HackerRank
-- Description:
-- Calculate the median value of LAT_N from the STATION table.
-- If the number of records is even, return the average of the two middle values.
-- Round the result to 4 decimal places.

SET @row := -1;

SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT 
        @row := @row + 1 AS row_num, 
        LAT_N
    FROM STATION
    ORDER BY LAT_N
) t
WHERE row_num IN (FLOOR(@row / 2), CEIL(@row / 2));