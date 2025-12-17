-- create table
use activitydb;
create table ctable2
(
	id int,
    product varchar(20),
    quantity int,
    price decimal(5,2),
    datesubmitted date,
    submittedby varchar(50)
);

alter table ctable2 add primary key(id);

alter table ctable2 
modify column product varchar(20) not null unique;

alter table ctable2
add constraint chk_quantity check(quantity > 5);

alter table ctable2
add constraint chk_price check(price > 50);

alter table ctable2
alter column datesubmitted set default(current_date());

alter table ctable2
alter column submittedby set default(user());

alter table ctable2
modify column id int auto_increment;


-- ---------------------------
-- create sproc
DELIMITER $$
create procedure ap2
(
	IN p varchar(20),
    IN q int,
    IN pr decimal(5,2)
)
begin
	insert into ctable2 (product,quantity,price)
    values (p,q,pr);
end $$
DELIMITER ;

-- -------------------------
DELIMITER $$
create procedure gps2()
begin 
	select * from ctable2;
end $$
DELIMITER ;

-- ----------------------------
call gps2();
call ap2('y',12,220);














