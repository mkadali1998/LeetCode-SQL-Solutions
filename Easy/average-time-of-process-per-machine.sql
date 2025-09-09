-- Problem: 1661. Average Time of Process per Machine
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/description/

SELECT 
    machine_id,
    ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM (
    SELECT 
        machine_id,
        process_id,
        MIN(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
        MIN(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
    FROM Activity
    GROUP BY machine_id, process_id
) AS process_durations
GROUP BY machine_id;
