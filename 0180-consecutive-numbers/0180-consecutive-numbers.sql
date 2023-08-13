# Write your MySQL query statement below
SELECT DISTINCT num as ConsecutiveNums 
FROM (SELECT num,
            LAG(num,1) OVER (ORDER BY id) as prev_num,
            LAG(num,2) OVER (ORDER BY id) as prev2_num,
            LEAD(num,1) OVER (ORDER BY id) as next_num,
            LEAD(num,2) OVER (ORDER BY id) as next2_num
    FROM Logs) as l
WHERE (num = next_num AND next_num = next2_num)