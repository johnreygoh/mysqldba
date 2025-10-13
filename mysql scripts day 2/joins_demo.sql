-- left inner join
-- join 2 tables, 1st table = left table
-- shows all from the left table, whether matching records
-- t1 (10 rows) + t2 (2 records) = 10 rows
-- select
-- 	e.first_name,
--     e.last_name,
--     d.department_name
-- from employees e
-- left join departments d
-- on e.department_id = d.department_id;

-- right inner join
-- join 2 tables, 2nd table = right table
-- shows all from the right table, whether matching records
-- t1 (10 rows) + t2 (2 records) = 2 rows
-- select 
-- 	e.first_name as firstname,
--     e.last_name as lastname,
--     d.department_name as dept,
--     e.salary
-- from employees e
-- right join departments d 
-- on e.department_id = d.department_id;


-- inner join
-- shows only matching rows
-- select 
-- 	e.first_name,
-- 	e.last_name,
--     d.department_id
-- from employees e
-- inner join departments d 
-- on e.department_id = d.department_id;

-- outer join in no supported in mysql

-- using conditions in join statements
select
	e.first_name,
	d.department_name,
    d2.department_name
from employees e
left join departments d
	on e.department_id = d.department_id
left join departments d2
	on e.department_id = d2.department_id
where d2.department_name = 'Sales';

