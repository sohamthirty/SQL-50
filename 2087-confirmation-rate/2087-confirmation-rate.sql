# Write your MySQL query statement below
SELECT s.user_id, if(SUM(c.action='confirmed')/COUNT(c.time_stamp) IS NULL, 0, ROUND(SUM(c.action='confirmed')/COUNT(c.time_stamp),2)) as confirmation_rate 
FROM Signups as s
LEFT JOIN Confirmations as c ON c.user_id=s.user_id
GROUP BY s.user_id;