-- how many employees
-- select count(*) from employees;

-- how many employees were assigned to a department
-- select count(department_id) from employees;

-- total amount to pay for everyone
-- select sum(salary) from employees;

-- average salary
-- select round(avg(salary),2) from employees;

-- max and min salary
-- select max(salary), min(salary) from employees;

-- how many emps per department
-- select
-- 	department_id as departments,
--     count(employee_id) as 'employee count'
-- from 
-- 	employees
-- group by department_id;

-- average salary per department, arrange by the highest to lowest
-- select 
-- 	department_id as departments,
--     round(avg(salary),2) as 'average salary'
-- from
-- 	employees
-- group by 
-- 	department_id
-- order by 
-- 	'average salary' desc;


-- departments having more than 3 employees
-- select
-- 	department_id as departments,
--     count(*) as employees
-- from 
-- 	employees
-- group by
-- 	department_id
-- having
-- 	count(*) > 3;

-- where = row-level conditional
-- having = aggregate condition (implemented over a group)

-- list of employee first names in department 1
-- select first_name from employees where department_id = 1;
-- select 
-- 	group_concat(concat(first_name,' ',last_name) separator ', ') as Dept1_Members
-- from 
-- 	employees
-- where
-- 	department_id = 1;


