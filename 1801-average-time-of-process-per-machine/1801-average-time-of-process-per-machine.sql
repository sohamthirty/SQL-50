# Write your MySQL query statement below
SELECT t.machine_id, ROUND(AVG(t.time),3) as processing_time
FROM (
SELECT a.machine_id, a.process_id, ROUND(b.timestamp - a.timestamp, 4) as time
FROM (SELECT * FROM Activity WHERE activity_type = 'start') as a
JOIN (SELECT * FROM Activity WHERE activity_type = 'end') as b
ON (a.machine_id, a.process_id) = (b.machine_id, b.process_id)) as t
GROUP BY t.machine_id;