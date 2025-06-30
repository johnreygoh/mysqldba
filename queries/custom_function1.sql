-- calculate annual bonus
-- salary and bonus percent
delimiter //
drop function if exists calculate_bonus;

create function calculate_bonus (
	salary decimal(10,2),
    bonus_percent decimal(5,2)
) returns decimal(10,2)
deterministic
begin
	-- variable to hold value
    declare answer decimal(10,2);
    set answer = salary + (salary * bonus_percent/100);
    return answer;
end;
//

delimiter ;
