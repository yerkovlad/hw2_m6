SELECT s.first_name, s.last_name, AVG(g.grade) AS avg_grade
FROM students s
JOIN grades g ON s.student_id = g.student_id
WHERE g.subject_id = :subject_id
GROUP BY s.first_name, s.last_name
ORDER BY avg_grade DESC
LIMIT 1;
