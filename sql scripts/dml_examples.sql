-- DML
use activitydb;

select * from employees;

insert into employees 
(firstname,lastname,department,yearhired,salary)
values
('mark','reyes','hr',2020,78000),
('john','santos','mis',2019,89000),
('kevin','sanchez','hr',2018,99000),
('richard','cruz','mis',2021,67000),
('fina','dianne','hr',2020,87000);


-- update
start transaction;

update employees 
set 
	salary = 99000,
    yearhired = 2019
where id = 3;

rollback;

commit;


-- update multiple records
update employees
set 
	salary = salary + 500
where department = 'hr';
-- --------------------------
update employees
set 
	yearhired = 2020
where id in (1,3,5);
------------------------

update employees
set 
	salary = salary + 50
where id in 
	(
    select id from employees
	where department = 'mis'
    );

select * from employees;

--------------------------------------

-- delete records
delete from employees
where department = 'hr';

delete from employees
where id >= 6;  

select * from employees;



