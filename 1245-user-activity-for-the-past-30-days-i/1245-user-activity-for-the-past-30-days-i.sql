# Write your MySQL query statement below
SELECT activity_date as day, COUNT(DISTINCT user_id) as active_users
FROM Activity
GROUP BY activity_date HAVING DATEDIFF('2019-07-27', activity_date) BETWEEN 0 AND 29;