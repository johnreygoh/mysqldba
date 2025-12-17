-- union demo
-- jan2025
create table jan2025
(
	t_id int primary key,
    product varchar(20) not null,
    sales int
);

-- feb2025
create table feb2025
(
	t_id int primary key,
    product varchar(20) not null,
    sales int,
    quantity int
);

-- mar2025
create table mar2025
(
	t_id int primary key,
    product varchar(20) not null,
    sales int
        
);

-- --------------------------[
-- add records

insert into jan2025 values 
(1,'a',34000),
(2,'b',56000);

insert into feb2025 values 
(100,'x',33000,3),
(101,'z',65000,6);

insert into mar2025 values 
(200,'f',22000),
(201,'g',23000),
(2,'b',56000);
-- --------------------------------
-- check records
select * from jan2025;
select * from feb2025;
select * from mar2025;
-- truncate table mar2025;
-- --------------------------------
-- union (removes duplicates)
select * from jan2025
union 
select t_id,product,sales from feb2025
union
select * from mar2025;

-- union all (show duplicates)
select * from jan2025
union all
select t_id,product,sales from feb2025
union all
select * from mar2025;



-- as view
create view firstquartersales
as
select * from jan2025
union
select * from feb2025
union
select * from mar2025;

-- ---------------------------

drop table feb2025;




