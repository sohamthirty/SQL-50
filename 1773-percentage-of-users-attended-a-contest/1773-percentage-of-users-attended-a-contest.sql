# Write your MySQL query statement below
SELECT contest_id, ROUND(100*COUNT(user_id)/(SELECT COUNT(*) FROM Users), 2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;