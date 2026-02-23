CREATE DATABASE product;
USE product;

CREATE TABLE details (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    secreat_code VARCHAR(50),
    mail_id VARCHAR(50),
    products VARCHAR(50),
    refill_count INT,
    date DATE,           
    time TIME           
);

INSERT INTO details (emp_id, name, secreat_code, mail_id, products, refill_count, date, time) 
VALUES 
(1, 'John Doe', 'SC123', 'john@email.com', 'Laptop', 5, '2024-01-15', '09:30:00'),
(2, 'Jane Smith', 'SC456', 'jane@email.com', 'Mouse', 3, '2024-01-15', '10:15:00'),
(3, 'Bob Wilson', 'SC789', 'bob@email.com', 'Keyboard', 2, '2024-01-16', '11:00:00'),
(4, 'Alice Brown', 'SC101', 'alice@email.com', 'Printer', 1, '2024-01-16', '13:30:00'),
(5, 'Charlie Davis', 'SC102', 'charlie@email.com', 'Monitor', 4, '2024-01-17', '09:45:00'),
(6, 'Diana Evans', 'SC103', 'diana@email.com', 'Laptop', 2, '2024-01-17', '14:20:00'),
(7, 'Ethan Foster', 'SC104', 'ethan@email.com', 'Mouse', 6, '2024-01-18', '10:00:00'),
(8, 'Fiona Green', 'SC105', 'fiona@email.com', 'Keyboard', 3, '2024-01-18', '11:30:00'),
(9, 'George Harris', 'SC106', 'george@email.com', 'Scanner', 2, '2024-01-18', '15:45:00'),
(10, 'Hannah Irving', 'SC107', 'hannah@email.com', 'Tablet', 1, '2024-01-19', '09:15:00'),
(11, 'Ian Jackson', 'SC108', 'ian@email.com', 'Laptop', 3, '2024-01-19', '16:30:00');

SELECT * FROM details;
