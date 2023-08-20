# SELECT COUNT(income<20000), COUNT(income>=20000 AND income<=50000), COUNT(income>50000)
SELECT c.category, COUNT(a.income) as accounts_count
FROM
( 
  SELECT 'Low Salary' as category
  UNION ALL
  SELECT 'Average Salary' as category
  UNION ALL
  SELECT 'High Salary' as category
) as c
LEFT JOIN Accounts as a
ON(
  (c.category='Low Salary' AND a.income<20000) OR
  (c.category='Average Salary' AND a.income>=20000 AND a.income<=50000) OR
  (c.category='High Salary' AND a.income>50000))
GROUP BY c.category