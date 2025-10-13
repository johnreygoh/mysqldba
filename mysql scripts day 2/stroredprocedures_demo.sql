-- functions = return a single value, run inside a statement
-- stored procedures / routines = SQL statement, save in database

-- traditional:
-- database ------sql statement------- app (sql: insert into ......)
-- 					|
-- 					network attacks, performance drawbacks

-- sprocs:
-- database(sql: insert into ......) ------values------ app (call sprocs(params))
										
-- sproc to get all employees
-- delimiter $$
-- drop procedure if exists getallemps;
-- create procedure getallemps()
-- begin
-- 	select * from employees;
-- end$$
-- delimiter ;

-- get record based on employee_id
-- delimiter $$
-- drop procedure if exists getbyid;
-- create procedure getbyid(IN id int)
-- begin
-- 	select * from employees where employee_id = id;
-- end $$
-- delimiter ;

-- sprocs for insert
delimiter $$
drop procedure if exists addemp;
create procedure addemp(
	IN fname varchar(50),
	IN lname varchar(50),
	IN datehired date,
	IN salary decimal(10,2),
	IN department_id int
)
begin
	insert into employees (first_name,last_name,hired_date,salary,department_id)
    values (fname,lname,datehired,salary,department_id);
end $$
delimiter ;


-- how to call this sproc
-- use testdatabase2;
-- call addemp('kevin','duran','2021-02-03',99000,2);







									