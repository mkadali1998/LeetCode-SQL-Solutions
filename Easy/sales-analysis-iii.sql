-- Problem: 1084. Sales Analysis III
-- Link: https://leetcode.com/problems/sales-analysis-iii/description/

SELECT DISTINCT product_id, product_name
FROM Product 
JOIN Sales USING (product_id)
WHERE sale_date BETWEEN '2019-01-01' AND '2019-03-31' 
    AND product_id NOT IN (
        SELECT product_id
        FROM Sales
        WHERE sale_date < '2019-01-01' OR sale_date > '2019-03-31'
    )
