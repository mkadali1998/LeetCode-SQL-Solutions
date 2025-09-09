-- Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/

SELECT DISTINCT v.customer_id, COUNT(*) AS count_no_trans
FROM visits v
LEFT JOIN transactions t using (visit_id)
WHERE t.transaction_id IS null
GROUP BY v.customer_id
