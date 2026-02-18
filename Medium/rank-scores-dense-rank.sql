-- Problem: Rank Scores Using DENSE_RANK
-- Platform: LeetCode 
-- Difficulty: Medium
-- Description:
-- Assign ranks to scores in descending order.
-- Scores with the same value should receive the same rank
-- without skipping the next rank (DENSE_RANK behavior).

SELECT score,
       DENSE_RANK() OVER (ORDER BY score DESC) AS rank
FROM Scores;
