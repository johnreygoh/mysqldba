-- combine firstname and lastname

delimiter $$

create function getfullname(fname varchar(50),lname varchar(50))
returns varchar(101)
deterministic
begin
	return concat(fname,' ',lname);
end $$

delimiter ;