-- Problem: 1211. Queries Quality and Percentage
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/description/

SELECT query_name, ROUND(SUM(rating/position) / COUNT(*), 2) AS quality, ROUND( SUM(rating < 3)/COUNT(*) * 100, 2) AS poor_query_percentage
FROM queries
GROUP BY query_name
