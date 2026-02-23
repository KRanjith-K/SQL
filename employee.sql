
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    dept_id INT
);

INSERT INTO employees (emp_id, name, salary, dept_id) VALUES
(1, 'Alice', 50000, 1),
(2, 'Bob', 60000, 1),
(3, 'Charlie', 45000, 1),
(4, 'David', 70000, 2),
(5, 'Eve', 55000, 2),
(6, 'Frank', 48000, 2),
(7, 'Grace', 65000, 3),
(8, 'Henry', 52000, 3),
(9, 'Ivy', 47000, 3);


UPDATE employees e
JOIN (
    SELECT dept_id, AVG(salary) as avg_salary
    FROM employees
    GROUP BY dept_id
) dept_avg ON e.dept_id = dept_avg.dept_id
SET e.salary = e.salary * 1.1
WHERE e.salary < dept_avg.avg_salary;


SELECT 
    e.*,
    d.avg_salary as department_average,
    IF(e.salary >= d.avg_salary, 'No Change', 'Increased') as status
FROM employees e
JOIN (
    SELECT dept_id, AVG(salary) as avg_salary
    FROM employees
    GROUP BY dept_id
) d ON e.dept_id = d.dept_id
ORDER BY e.dept_id, e.salary;
