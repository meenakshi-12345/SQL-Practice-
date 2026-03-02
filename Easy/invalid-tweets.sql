-- Problem: Invalid Tweets
-- Platform: LeetCode
-- Difficulty: Easy
-- Description:
-- Retrieve the tweet_id of tweets whose content
-- length is greater than 15 characters.

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;