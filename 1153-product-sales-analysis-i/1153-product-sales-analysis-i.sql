# Write your MySQL query statement below
SELECT b.product_name, a.year, a.price
FROM Sales as a
LEFT JOIN Product as b
ON a.product_id = b.product_id;