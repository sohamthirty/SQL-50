# Write your MySQL query statement below
#  CASE 
#     WHEN num IS NULL THEN SELECT 'null'
#     ELSE SELECT num END
SELECT CASE WHEN COUNT(NUM)=1 THEN num
            ELSE NULL END as num
FROM MyNumbers
GROUP BY num
ORDER BY num DESC
LIMIT 1;