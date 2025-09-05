-- Problem: 620. Not Boring Movies
-- Link: https://leetcode.com/problems/not-boring-movies/description/

SELECT *
FROM cinema
WHERE description <> 'boring' AND id % 2 <> 0
ORDER BY rating DESC
