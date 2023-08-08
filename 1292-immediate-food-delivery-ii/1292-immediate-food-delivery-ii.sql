# Write your MySQL query statement below
SELECT ROUND(100.0 * SUM(type='immediate') / COUNT(*),2) as immediate_percentage
FROM(
SELECT customer_id,
      CASE WHEN MIN(customer_pref_delivery_date)>MIN(order_date) THEN 'scheduled' ELSE 'immediate' END as type
FROM Delivery
GROUP BY customer_id) as t;
 