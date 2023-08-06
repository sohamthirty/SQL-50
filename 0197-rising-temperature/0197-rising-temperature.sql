# Write your MySQL query statement below
SELECT b.id
FROM Weather as a, Weather as b
WHERE datediff(b.recordDate, a.recordDate) = 1 AND b.temperature > a.temperature;