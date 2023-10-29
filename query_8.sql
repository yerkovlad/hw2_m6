SELECT t.first_name, t.last_name, AVG(g.grade) AS avg_grade
FROM teachers t
JOIN subjects s ON t.teacher_id = s.teacher_id
JOIN grades g ON s.subject_id = g.subject_id
WHERE t.teacher_id = :teacher_id
GROUP BY t.first_name, t.last_name;
