-- Problem: Top 2 Message Senders in August 2022
-- Platform: Data Lemur
-- Difficulty: Easy
-- Description:
-- Find the top 2 users who sent the highest number of messages
-- between August 1, 2022 and August 31, 2022.

SELECT sender_id,
       COUNT(message_id) AS message_count
FROM messages
WHERE sent_date BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
