CREATE TABLE student(
  ID INT,
  Name VARCHAR(50),
  age INT,
  finalgrade VARCHAR(50)
);

INSERT INTO student (ID, Name, age, finalgrade) VALUES
  (1, 'Aarav Sharma', 18, 'B'),
  (2, 'Priya Patel', 19, 'B'),
  (3, 'Rahul Verma', 17, 'A'),
  (4, 'Sneha Reddy', 18, 'C'),
  (5, 'Vikram Singh', 20, 'B'),
  (6, 'Ananya Gupta', 19, 'A'),
  (7, 'Karan Mehta', 18, 'B'),
  (8, 'Neha Kapoor', 17, 'C'),
  (9, 'Arjun Nair', 20, 'A'),
  (10, 'Meera Joshi', 18, 'B');

select avg(age),finalgrade from student
group by finalgrade
having avg(age)
between 18 and 25
