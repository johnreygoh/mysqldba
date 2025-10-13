-- function to check years in service of employees
delimiter $$

create function yos(datehired DATE)
returns int
deterministic
begin
	return timestampdiff(YEAR, datehired, curdate());
end$$

delimiter ;