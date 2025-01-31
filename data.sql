-- Insert data into Departments table
INSERT INTO Departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Sales');

-- Insert data into Employees table
INSERT INTO Employees (employee_id, first_name, last_name, email, hire_date, department_id) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2020-01-15', 2),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2019-03-22', 1),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '2021-07-10', 2),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '2018-11-05', 3);

-- Insert data into Salaries table
INSERT INTO Salaries (salary_id, employee_id, salary_amount, from_date, to_date) VALUES
(1, 1, 75000.00, '2020-01-15', '2021-01-14'),
(2, 1, 80000.00, '2021-01-15', '2022-01-14'),
(3, 2, 65000.00, '2019-03-22', '2020-03-21'),
(4, 3, 70000.00, '2021-07-10', '2022-07-09');

-- Insert data into Projects table
INSERT INTO Projects (project_id, project_name, start_date, end_date) VALUES
(1, 'Website Redesign', '2022-01-01', '2022-06-30'),
(2, 'Product Launch', '2022-03-15', '2022-09-15'),
(3, 'Internal Training', '2022-05-01', '2022-08-31');

-- Insert data into Employee_Projects table
INSERT INTO Employee_Projects (employee_id, project_id, hours_worked) VALUES
(1, 1, 120),
(2, 2, 80),
(3, 1, 90),
(4, 3, 60);