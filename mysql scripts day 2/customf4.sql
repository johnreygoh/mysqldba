-- function to get n% of any column 

delimiter $$
create function getpct(numcol decimal(10,2),pct int)
returns decimal(10,2)
deterministic
begin
	return numcol * (pct * 0.01);
end$$

delimiter ;