-- check if employee was hired on a weekend, true/false
delimiter $$
drop function if exists weekendhire;
create function weekendhire(datehired DATE)
returns varchar(3)
deterministic
begin
	declare dayOfWeek int;
    set dayOfWeek = dayofweek(datehired);	-- 1=Sunday,7=Saturday
    if dayOfWeek = 1 or dayOfWeek = 7 then
		return 'yes';
	else	
		return 'no';
    end if;
end$$
delimiter ;
