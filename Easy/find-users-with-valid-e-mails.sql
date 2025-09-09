-- Problem: 1517. Find Users With Valid E-Mails
-- Link: https://leetcode.com/problems/find-users-with-valid-e-mails/description/

SELECT user_id, name, mail
FROM Users
WHERE mail COLLATE utf8mb3_bin REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$';
