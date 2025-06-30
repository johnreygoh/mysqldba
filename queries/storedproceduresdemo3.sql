-- stored procedure for delete
use subquery_demo;

delimiter //
drop procedure if exists removeone;

create procedure removeone(
	emp_id int
) begin
	delete from employees where employee_id = emp_id;
end;
//

delimiter ;

