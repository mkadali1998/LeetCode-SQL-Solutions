-- Problem: 1587. Bank Account Summary II
-- Link: https://leetcode.com/problems/bank-account-summary-ii/description/

SELECT name, SUM(amount) AS balance
FROM Users
JOIN Transactions USING (account)
GROUP BY account
HAVING SUM(amount) > 10000
