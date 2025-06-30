-- function to get years tenure

delimiter //

drop function if exists gettenure;

create function gettenure (
	hire_date date
) returns int
deterministic
begin
	declare answer int;
    set answer = round(datediff(curdate(),hire_date),0);
	return answer;
end;
//
delimiter ;