SELECT s.first_name, s.last_name, t.first_name, t.last_name, su.subject_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN subjects su ON g.subject_id = su.subject_id
JOIN teachers t ON su.teacher_id = t.teacher_id
WHERE s.student_id = :student_id AND t.teacher_id = :teacher_id;
