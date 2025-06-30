-- stored procedures demo
use subquery_demo;

-- select procudure
delimiter //
drop procedure if exists getall;

create procedure getall ()
begin
	select * from employees;
end;
//
delimiter ;

