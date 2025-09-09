-- Problem: 1683. Invalid Tweets
-- Link: https://leetcode.com/problems/invalid-tweets/description/

SELECT tweet_id
FROM tweets
WHERE length(content) > 15
