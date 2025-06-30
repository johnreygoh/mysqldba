use adpdatabase1;

select * from employees;

-- update multiple records
update employees
set msalary = msalary + 5000
where department = 'mis';

-- update based on mult values and mult columns
-- and  / or
update employees
set msalary = msalary - 2000
where 
	department in ('hr','admin')
	and msalary > 80000;
    
-- update multiple values
update employees
set
	department = 'finance',
	msalary = 76000
where
	firstname = 'mimi' and lastname = 'sanchez';

-- delete
delete from employees
where empid = 1;

-- if auto-commit is disabled, run this command to persist changes from queries
commit;

-- if auto-commit is disabled, run this command to rollback changes
rollback;

-- delete based on multiple values of same column
delete from employees
where department in ('mis','finance','admin');

-- ----------------------------------

-- wildcards / regex patterns
-- % - any char / any number of chars
-- _ - any char / 1 char only
-- [bcn] - inclusive single chars
-- [^bcn] - excluded single chars

-- example 1
update employees
set msalary = 88000
where firstname like 'j%';

-- example 2
update employees 
set msalary = 77000
where lastname like 'sanch__' or lastname like 'santo_'; 

select * from employees;








