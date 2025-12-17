-- stored procedure to insert record to employees

DELIMITER $$
create procedure addemp
(
	IN fn varchar(20),
	IN ln varchar(20),
	IN de varchar(20),
	IN yh int,
	IN sa int
)
begin
    insert into employees
    (firstname,lastname,department,yearhired,salary)
    values (fn,ln,de,yh,sa);
end $$
DELIMITER ;
-- -----------------------------
call addemp('harry','potter','mis',2010,560000);

--------------------------
select * from employees;


