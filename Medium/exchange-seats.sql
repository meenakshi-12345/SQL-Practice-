-- Problem: Exchange Seats
-- Platform: LeetCode
-- Difficulty: Medium
-- Description:
-- Swap the seat id of every two consecutive students.
-- If the number of students is odd, the last student remains unchanged.
-- Return the result ordered by id.

SELECT id, student
FROM (
    SELECT
        CASE
            WHEN MOD(id, 2) != 0
             AND id != (SELECT MAX(id) FROM Seat) THEN id + 1
            WHEN MOD(id, 2) = 0 THEN id - 1
            ELSE id
        END AS id,student
    FROM Seat
) t
ORDER BY id;