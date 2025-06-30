CREATE DATABASE IF NOT EXISTS subquery_demo;
USE subquery_demo;

-- Drop existing tables
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);

-- Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert departments
INSERT INTO departments (department_name) VALUES
('HR'), ('Finance'), ('Engineering');

-- Insert employees
INSERT INTO employees (full_name, department_id, salary, hire_date) VALUES
('Alice Smith', 1, 45000.00, '2020-01-10'),
('Bob Johnson', 2, 60000.00, '2019-05-20'),
('Charlie Brown', 2, 58000.00, '2022-03-15'),
('David Lee', 3, 80000.00, '2021-07-01'),
('Eva Green', 3, 95000.00, '2023-01-01');


-- show employees salary greater than the average salary
select full_name, salary
from employees
where salary > (select avg(salary) from employees);

-- show employees in departments having more than 1 employee

-- select department_id, count(*) from employees
-- group by department_id;

select 
	full_name,
    department_id
from employees
where department_id in 
	(
		select department_id
		from employees
		group by department_id
        having count(*) > 1
    );
    
    
-- subquery operators
-- Exists, In, Any, All
-- example ANY operator

-- find employees salary > ANY HR employees
select full_name, salary
from employees
where salary > ANY (
	select salary from employees where department_id = 1
);



