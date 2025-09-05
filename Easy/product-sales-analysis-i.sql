-- Problem: 1068. Product Sales Analysis I
-- Link: https://leetcode.com/problems/product-sales-analysis-i/description/

SELECT p.product_name, s.year, s.price
FROM sales s
JOIN product p USING (product_id)
