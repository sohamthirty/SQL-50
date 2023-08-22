SELECT id, count(*) as num
FROM(
  SELECT requester_id as id
  FROM requestaccepted
  UNION ALL
  SELECT accepter_id as id
  FROM requestaccepted) as a
GROUP BY id
ORDER BY num DESC
LIMIT 1;