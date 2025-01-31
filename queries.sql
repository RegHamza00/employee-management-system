-- Query 1: List all employees with their department names
SELECT e.first_name, e.last_name, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Query 2: Find the total salary paid to each employee
SELECT e.first_name, e.last_name, SUM(s.salary_amount) AS total_salary
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id
GROUP BY e.employee_id;

-- Query 3: List employees working on the "Website Redesign" project
SELECT e.first_name, e.last_name
FROM Employees e
JOIN Employee_Projects ep ON e.employee_id = ep.employee_id
JOIN Projects p ON ep.project_id = p.project_id
WHERE p.project_name = 'Website Redesign';

-- Query 4: Find the total hours worked by each employee
SELECT e.first_name, e.last_name, SUM(ep.hours_worked) AS total_hours
FROM Employees e
JOIN Employee_Projects ep ON e.employee_id = ep.employee_id
GROUP BY e.employee_id;

-- Query 5: List all projects with the number of employees working on them
SELECT p.project_name, COUNT(ep.employee_id) AS num_employees
FROM Projects p
LEFT JOIN Employee_Projects ep ON p.project_id = ep.project_id
GROUP BY p.project_id;

-- Query 6: Find the highest-paid employee
SELECT e.first_name, e.last_name, MAX(s.salary_amount) AS highest_salary
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id;

-- Query 7: List employees hired in 2020
SELECT first_name, last_name, hire_date
FROM Employees
WHERE YEAR(hire_date) = 2020;