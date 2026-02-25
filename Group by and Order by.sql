
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

INSERT INTO employee (emp_id, first_name, last_name, department, salary, hire_date) VALUES
(1, 'Ravi', 'Kumar', 'HR', 25000, '2022-05-10'),
(2, 'Anitha', 'Sharma', 'IT', 40000, '2021-03-15'),
(3, 'Arun', 'Raj', 'Finance', 35000, '2020-07-20'),
(4, 'Divya', 'Menon', 'IT', 45000, '2019-11-01'),
(5, 'Karthik', 'Reddy', 'HR', 28000, '2023-01-12');

SELECT * FROM employee;

SELECT *  FROM employee order by last_name asc;

SELECT * FROM employee where department='IT' order by salary desc;

SELECT count(*),department FROM employee group by department;

SELECT avg(salary),department FROM employee group by department order by department asc;

SELECT avg(salary),department FROM employee group by department order by avg(salary) desc limit 1;
