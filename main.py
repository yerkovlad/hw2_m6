from faker import Faker
import random

fake = Faker()

groups = ['Група 1', 'Група 2', 'Група 3']
for group_name in groups:
    group_id = random.randint(1, 3)
    cursor.execute("INSERT INTO groups (group_name) VALUES (%s);", (group_name,))

for _ in range(5):
    first_name = fake.first_name()
    last_name = fake.last_name()
    cursor.execute("INSERT INTO teachers (first_name, last_name) VALUES (%s, %s);", (first_name, last_name))

subjects = ['Математика', 'Фізика', 'Історія', 'Біологія', 'Хімія', 'Географія', 'Англійська мова']
for subject in subjects:
    teacher_id = random.randint(1, 5)  # Виберемо випадкового викладача
    cursor.execute("INSERT INTO subjects (subject_name, teacher_id) VALUES (%s, %s);", (subject, teacher_id))

for _ in range(50):
    first_name = fake.first_name()
    last_name = fake.last_name()
    group_id = random.randint(1, 3)
    cursor.execute("INSERT INTO students (first_name, last_name, group_id) VALUES (%s, %s, %s);", (first_name, last_name, group_id))

for student_id in range(1, 51):
    for subject_id in range(1, 8):
        grade = round(random.uniform(60, 100), 2)  # Випадкова оцінка від 60 до 100
        date_received = fake.date_of_birth(minimum_age=18, maximum_age=25)  # Випадкова дата
        cursor.execute("INSERT INTO grades (student_id, subject_id, grade, date_received) VALUES (%s, %s, %s, %s);", (student_id, subject_id, grade, date_received))

connection.commit()
