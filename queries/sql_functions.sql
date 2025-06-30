create database if not exists sqlfunctionsdemo;
use sqlfunctionsdemo;

drop table if exists employees;

create table employees(
	emp_id int primary key auto_increment,
    full_name varchar(100) not null,
    department varchar(100) not null,
    salary decimal(10,2), 
    hire_date date,
    bonus_percent decimal(10,2)
);

-- sql functions
-- aggregate functions
-- total salary?
select sum(salary) as 'total salary' from employees;

-- total salary per department?
select 
	upper(department) as 'Department', 
	sum(salary) as 'total salary',
    round(avg(salary),2) as 'average salary',
    min(salary) as 'minimum salary',
    max(salary) as 'maximum salary'
from employees
group by department;

-- count employees per department
select 
	upper(department) as 'Department',
    count(*) as 'employee count'
from employees
group by department
having count(*) >= 2
order by count(*) desc;

-- employee highest salary per department
select 
	department,
    full_name,
    max(salary)
from employees
where department in ('hr','finance')
group by department
order by salary desc;

-- scalar
select * from employees;

select 
	emp_id,
    concat(upper(left(full_name,1)),right(full_name,length(full_name)-1)) as 'Name',
    salary,
    upper(left(department,2)),
    hire_date,
    bonus_percent,
    (salary + 5000) as 'adjusted salary',
    round((salary + 5000) + ((salary + 5000) * (bonus_percent / 100)),2) as 'net salary',
    year(hire_date) as 'year hired',
    monthname(hire_date) as 'month hired',
    round(datediff(curdate(), hire_date) / 365,1) as 'years at work'
from employees;

-- custom functions
select 
	full_name,
    salary,
    calculate_bonus(salary,bonus_percent) as 'net salary',
	netpay(salary,2000,2500) as 'net pay'
from employees;

use sqlfunctionsdemo;
select * from employees;












