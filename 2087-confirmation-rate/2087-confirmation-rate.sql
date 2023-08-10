# Write your MySQL query statement below
SELECT s.user_id, ROUND(AVG(if(c.action="confirmed",1,0)),2) as confirmation_rate
FROM Signups as s
LEFT JOIN Confirmations as c ON c.user_id=s.user_id
GROUP BY s.user_id;