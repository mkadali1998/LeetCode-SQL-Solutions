-- Problem: 1484. Group Sold Products By The Date
-- Link: https://leetcode.com/problems/group-sold-products-by-the-date/description/

SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
