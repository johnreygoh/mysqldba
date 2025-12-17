-- create table with constraints
-- use activitydb;
create table activitydb.ctable1
(
	id int auto_increment primary key,
    product varchar(20) not null unique,
    quantity int check(quantity > 0),
    price decimal(5,2) check(price > 100),
    datesubmitted date default(current_date()),
    submittedby varchar(50) default(user())
);

-- create sproc for insert
DELIMITER $$
create procedure ap
(
	IN p varchar(20),
    IN q int,
    IN pr decimal(5,2)
)
begin
	insert into ctable1 (product,quantity,price)
    values (p,q,pr);
end $$
DELIMITER ;
-- --------------------------------------------
-- create sproc for select
DELIMITER $$
create procedure gps()
begin
	select * from ctable1;
end $$
DELIMITER ;
-- --------------------------------

call gps();
call ap('a',10,200.50);
call ap('c',22,300);



