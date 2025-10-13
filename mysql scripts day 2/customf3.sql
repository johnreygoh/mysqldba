-- salary category
-- >=90000 HIGH, 60000 - 89999 STANDARD, <60000 ENTRY

delimiter $$

create function getsalarycat(salary decimal(10,2))
returns varchar(8)
deterministic
begin
	declare c varchar(8);
    
    if salary >= 90000 then
		set c = 'High';
	elseif salary >= 60000 and salary <= 89999 then
		set c = 'Standard';
	else
		set c = 'Entry';
	end if;
    
    return c;
end $$
delimiter ;