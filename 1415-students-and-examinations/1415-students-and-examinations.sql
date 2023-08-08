# Write your MySQL query statement below
SELECT 
      s.student_id, 
      s.student_name, 
      a.subject_name, 
      COUNT(e.student_id) as attended_exams 
FROM Students as s
JOIN Subjects as a
LEFT JOIN examinations as e ON s.student_id = e.student_id AND a.subject_name = e.subject_name
GROUP BY s.student_id, a.subject_name
ORDER BY s.student_id, a.subject_name;