DELETE 
FROM Person
WHERE Id NOT IN
(
  SELECT Id
  FROM
  (
    SELECT MIN(id) as Id
    FROM Person
    GROUP BY Email
  ) as P
)