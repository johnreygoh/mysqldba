-- proper casing
delimiter //

drop function if exists getchars;

create function getchars (
	full_name varchar(100)
) returns varchar(100)
deterministic
begin
	return upper(left(full_name,3));
end;
//

delimiter ;
