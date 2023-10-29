SELECT s.first_name, s.last_name, su.subject_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN subjects su ON g.subject_id = su.subject_id
WHERE s.student_id = :student_id;
