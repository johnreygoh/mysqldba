-- stored procedure

DELIMITER $$
create procedure getAll()
Begin
	select * from orders;
End $$
DELIMITER ;

-- use stored procedure
call getAll();



