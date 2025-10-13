-- sq in where
-- employees that are earning above average salary
-- select 
-- 	first_name,
--     salary
-- from employees
-- where salary > (select avg(salary) from employees);


-- sq in IN
-- get all employees from Sales department
-- select 
-- 	first_name,
--     last_name
-- from employees
-- where department_id in 
-- 	(select department_id from departments where department_name = 'Sales');

-- find employee(s) who earn more than anyone in support department
-- select 
-- 	first_name,
--     last_name,
--     salary
-- from employees
-- where salary > ALL (select salary from employees where department_id = 5);

-- sq in update
-- give a raise 3000 to everyone in Sales dept
update employees
set salary = salary + 3000
where department_id = (select department_id from departments where department_name = 'Sales');

-- sq in delete
-- delete all records from engineering department
delete from employees
where department_id = 
	(select department_id from departments where department_name='Engineering');














