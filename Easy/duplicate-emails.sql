-- Problem: 182. Duplicate Emails
-- Link: https://leetcode.com/problems/duplicate-emails/description/

SELECT email as Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1
