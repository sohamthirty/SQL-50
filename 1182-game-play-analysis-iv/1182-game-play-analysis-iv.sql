# Write your MySQL query statement below

# SELECT SUM(DATEDIFF(MIN(event_date), event_date) = 1)
SELECT ROUND(SUM(DATEDIFF(a.event_date, b.first_login) = 1)/ COUNT(DISTINCT(a.player_id)),2) as fraction
FROM Activity as a
JOIN
(SELECT player_id , MIN(event_date) as first_login
FROM Activity
GROUP BY player_id) as b
ON a.player_id=b.player_id
# select round((sum(if(datediff(event_date,first_login)=1,1,0))/count(distinct player_id)),2) fraction
# from (select *, min(event_date) over(partition by player_id) first_login
#       from activity) t