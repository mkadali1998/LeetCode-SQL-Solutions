-- Problem: 1633. Percentage of Users Attended a Contest
-- Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/

SELECT 
    r.contest_id, 
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM users), 2) AS percentage
FROM register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id;
