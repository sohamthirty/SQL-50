# Write your MySQL query statement below
SELECT customer_id#, COUNT(product_key)
FROM Customer
GROUP BY customer_id HAVING COUNT(distinct product_key) = (SELECT COUNT(distinct product_key) FROM Product);