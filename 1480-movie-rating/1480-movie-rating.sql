(SELECT u.name as results      
FROM MovieRating as r
JOIN Users as u ON r.user_id=u.user_id
GROUP By u.user_id
ORDER BY COUNT(r.rating) DESC, u.name LIMIT 1)
UNION ALL
(SELECT m.title as results      
FROM MovieRating as mr
JOIN Movies as m ON mr.movie_id = m.movie_id 
WHERE mr.created_at LIKE "2020-02-%"
GROUP BY mr.movie_id
ORDER BY AVG(mr.rating) DESC, m.title LIMIT 1);
