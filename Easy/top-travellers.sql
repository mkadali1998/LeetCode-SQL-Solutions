-- Problem: 1407. Top Travellers
-- Link: https://leetcode.com/problems/top-travellers/description/

SELECT u.name, CASE WHEN distance IS NULL THEN 0 ELSE SUM(distance) END AS travelled_distance
FROM Users u
LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY SUM(distance) DESC, u.name 
