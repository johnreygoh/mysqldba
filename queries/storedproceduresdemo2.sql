-- insert record
use subquery_demo;

delimiter //
drop procedure if exists addnew;

create procedure addnew(
	p_full_name varchar(100),
    p_department_id int,
    p_salary decimal(10,2),
    p_hire_date date
) begin

insert into employees (full_name, department_id, salary, hire_date)
values (p_full_name,p_department_id,p_salary,p_hire_date);

end;
//
delimiter ;
