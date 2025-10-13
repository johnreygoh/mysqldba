-- get round, ceil, floor of values
-- select
-- 	upper(concat(first_name,' ',last_name)) as employees,
--     salary + (salary * 0.152353)  as 'adjusted salary',
--     round(salary + (salary * 0.152353)) as roundoff,
--     ceil(salary + (salary * 0.152353)) as ceiling,
--     floor(salary + (salary * 0.152353)) as floor,
--     format(salary,2) as mysalary
-- from 
-- 	employees;
    

-- difference between salary of Alice and Bob?
-- positive number difference, ABS()
-- select
-- 	abs(
-- 		(select salary from employees where first_name = 'Alice') - 
-- 		(select salary from employees where first_name = 'Bob') 
-- 	) as answer 
-- from 
-- 	employees
-- limit 1;


-- mod() = gets remainder
-- power()
-- sqrt()
-- select 
-- 	department_id,
-- 	mod(department_id,2) as mod_answer,
--     power(department_id,2) as power_answer,
--     sqrt(salary) as salary_squared
-- from 
-- 	employees;

-- random = rand() 
-- pick a random employee
-- select 
-- 	first_name
-- from 
-- 	employees
-- order by
-- 	rand()
-- limit 1;

-- random number within a range
-- 1 - 100
-- select floor(1 + (rand() * 10)) as result

-- truncate decimal places, trims decimal places without rounding
-- select 
-- 	salary * 0.00005 as salary,
-- 	truncate(salary * 0.00005,1) as truncatedsalary
-- from employees;














