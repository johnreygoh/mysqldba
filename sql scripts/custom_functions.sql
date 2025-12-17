-- create function for fullname uppercase
DELIMITER $$
create function getfullname
(
	fn varchar(20), ln varchar(20)
)
returns varchar(50)
deterministic
begin
	declare fulln varchar(50);
    set fulln = upper(concat(fn,' ',ln));
    return fulln;
    -- return upper(concat(fn,' ',ln));
end $$
DELIMITER ;

-- ---------------------------------------
drop function getEID;

-- function for employeeID
DELIMITER $$
create function getEID
(
	id int,
    fn varchar(20),
    ln varchar(20),
    de varchar(20),
    yh int
)
returns varchar(50)
deterministic
begin
	declare eid varchar(50);
    set eid = 
		upper(
			concat(
		left(de,2),'-',id,left(fn,1),left(ln,1),yh
            )
        );
	return eid;
end $$
DELIMITER ;
-- -----------------------------------
-- function  + 30% salary
DELIMITER $$
create function newsalary
(
	sa decimal(10,2)
)
returns decimal(10,2)
deterministic
begin
	declare answer decimal(10,2);
    set answer = sa + (sa * 0.3);
    return answer;
end $$
DELIMITER ;

-- -----------------------
-- function for yearsWorked
DELIMITER $$
create function yearsWorked(ye int)
returns int 
deterministic
begin
	declare yw int;
    set yw = year(curdate()) - ye;
	return yw;
end $$
DELIMITER ;

-- -------------------------

select
	getfullname(firstname,lastname) as fullname,
    getEID(id,firstname,lastname,department,yearhired)
		as EmployeeID,
	newsalary(salary) as newSalary,
    yearsWorked(yearhired) as yearsWorked
from  employees;
    




 










