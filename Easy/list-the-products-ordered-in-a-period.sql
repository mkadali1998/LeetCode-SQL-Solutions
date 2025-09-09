-- Problem: 1327. List the Products Ordered in a Period
-- Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/

WITH sum AS (
    SELECT SUM(unit) AS unit, product_name
    FROM products p
    JOIN orders o USING (product_id)
    WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY product_id
)
SELECT product_name, unit
FROM sum
WHERE unit >= 100
