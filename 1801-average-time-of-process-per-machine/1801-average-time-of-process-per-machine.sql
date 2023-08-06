# Write your MySQL query statement below
SELECT machine_id, ROUND(AVG(
  CASE
  WHEN activity_type = 'end' THEN timestamp
  WHEN activity_type = 'start' THEN -timestamp
  END)*2
, 3) as processing_time
FROM Activity
GROUP BY machine_id;