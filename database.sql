CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    group_id INT
);

CREATE TABLE groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(50)
);

CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100),
    teacher_id INT
);

CREATE TABLE grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INT,
    subject_id INT,
    grade DECIMAL(5, 2),
    date_received DATE
);

INSERT INTO groups (group_name) VALUES
    ('Група 1'),
    ('Група 2'),
    ('Група 3');

INSERT INTO teachers (first_name, last_name) VALUES
    ('Іван', 'Петров'),
    ('Олена', 'Сидорова'),
    ('Михайло', 'Іванов');

INSERT INTO subjects (subject_name, teacher_id) VALUES
    ('Математика', 1),
    ('Фізика', 2),
    ('Історія', 3);

INSERT INTO students (first_name, last_name, group_id) VALUES
    (Faker::first_name, Faker::last_name, 1),
    (Faker::first_name, Faker::last_name, 2),
    (Faker::first_name, Faker::last_name, 1),

INSERT INTO grades (student_id, subject_id, grade, date_received) VALUES
    (1, 1, 95.5, '2023-10-01'),
    (1, 2, 88.0, '2023-10-05'),
    (2, 1, 75.5, '2023-10-03'),
