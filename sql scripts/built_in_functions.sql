use activitydb;
-- fetching records
select * from employees;

select 
	upper(firstname) as firstname,
    upper(lastname) as lastname,
    concat(firstname,' ',lastname) as fullname
from employees;

select
	sum(salary) as totalSalary
from employees
where department = 'mis';

-- emp id
-- MI-1MR2020
select 
	upper(concat(firstname,' ',lastname)) as fullname,
	upper(concat(
		left(department,2),'-',
        id, left(firstname,1),
        left(lastname,1), yearhired
        )) as employeeID,
	salary as oldSalary,
	(salary + (salary * 0.3)) as newSalary,
    yearhired,
    year(curdate()) as currentYear,
    year(curdate()) - yearhired as yearsWork 
from employees;










 