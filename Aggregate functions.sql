CREATE TABLE student_details (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    grade VARCHAR(10),
    subject VARCHAR(50),
    marks INT,
    exam_date DATE,
    exam_time TIME
);

INSERT INTO student_details 
(student_id, name, grade, subject, marks, exam_date, exam_time)
VALUES
(1, 'John Doe', 'A', 'Math', 85, '2024-03-10', '09:00:00'),
(2, 'Jane Smith', 'B', 'Science', 78, '2024-03-10', '10:30:00'),
(3, 'Bob Wilson', 'A', 'English', 88, '2024-03-11', '11:00:00'),
(4, 'Alice Brown', 'C', 'History', 65, '2024-03-11', '01:00:00'),
(5, 'Charlie Davis', 'B', 'Computer', 74, '2024-03-12', '09:30:00');


SELECT sum(marks) as Total_marks_sum FROM student_details;

SELECT max(marks) as Total_marks_max FROM student_details;

SELECT min(marks) as Total_marks_min FROM student_details;

SELECT count(name) as Total_name FROM student_details;

SELECT count(subject) FROM student_details where subject='English';
