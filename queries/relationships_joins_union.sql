-- relationships, joins and unions
-- database: rju
create database if not exists rju;
use rju;

drop table if exists order_items;
drop table if exists orders;
drop table if exists customers;
drop table if exists products;

create table rju.customers(
	customer_id int primary key auto_increment,
    customer_name varchar(100),
    city varchar(100)
);

create table rju.orders(
	order_id int primary key auto_increment,
    customer_id int,
    order_date timestamp default current_timestamp,
    foreign key (customer_id) references rju.customers(customer_id)
);

create table rju.products(
	product_id int primary key auto_increment,
    product_name varchar(100),
    price decimal(10,2)
);

create table rju.order_items(
	order_item_id int primary key auto_increment,
    order_id int,
    product_id int,
    quantity int,
    foreign key (order_id) references orders(order_id),
	foreign key (product_id) references products(product_id)
);

-- add records
insert into rju.customers (customer_name, city) 
values
	('a','manila'),
	('b','makati'),
	('c','pasig');
    
insert into rju.orders (customer_id) 
values 
	(1),
	(2),
	(3);


insert into rju.products (product_name,price) 
values
	('table',5000),
    ('chair',8000),
    ('window',30000);


insert into rju.order_items (order_id, product_id, quantity)
values
	(1,2,20),
    (2,1,5),
    (3,1,2);


-- cannot truncate referenced table, so the ff will not work
-- truncate table rju.orders;

-- check relationships in a table
use information_schema;
select table_name, constraint_name 
from information_schema.key_column_usage
where table_name = 'orders';

-- example to delete: 'orders_ibfk_1'
use rju;
alter table orders drop foreign key orders_ibfk_1;

-- add foreign key relationship
alter table orders
add constraint fk_orders_customers
foreign key (customer_id) 
references customers(customer_id);

-- displaying records using joins

-- ---------------------------------------------------

-- create tables for joining
use rju;
create table staff(
	staff_id int primary key not null,
    staff_name varchar(100) unique not null
);

create table staff_work(
	staff_id int primary key not null,
    shift varchar(10) not null,
    contact_no varchar(30) not null
);

create table staff_personal(
	staff_id int primary key not null,
    birthyear int,
    address varchar(100)
);

-- join types
-- inner join, left join, right join, *no full outer join si mysql
-- inner join (matching rows fr both tables)
-- left join (all records from the left table)
-- right join (all records from right table)
-- table and column aliases
select 
	s.staff_id as 'ID',
    s.staff_name as 'NAME',
    w.shift as 'Schedule',
    w.contact_no as 'Contact Number',
    p.birthyear as 'Birth Year',
    p.address as 'Home'
from staff s
left join staff_work w 
	on s.staff_id = w.staff_id
left join staff_personal p
	on s.staff_id = p.staff_id
    order by s.staff_id;

-- -------------------------------------
-- orders[*] + customers[1]
select 
	c.customer_id as 'ID',
    c.customer_name as 'Name',
    o.order_id,
    o.order_date as 'order date'
from customers c
left join orders o 
	on c.customer_id = o.customer_id;

-- --------------------------------
select 
	oi.order_item_id,
    oi.order_id,
    oi.product_id,
    o.order_date,
    c.customer_name,
    p.product_name
from order_items oi
left join orders o
	on oi.order_id = o.order_id
left join customers c 
	on o.customer_id = c.customer_id
left join products p 
	on oi.product_id = p.product_id;


-- --------------------------------
-- create view based on sql
create view join_sample as
select 
	oi.order_item_id,
    oi.order_id,
    oi.product_id,
    o.order_date,
    c.customer_name,
    p.product_name
from order_items oi
left join orders o
	on oi.order_id = o.order_id
left join customers c 
	on o.customer_id = c.customer_id
left join products p 
	on oi.product_id = p.product_id;

-- --------------------------------------

-- union demo
create table jan2025sales(
	id int primary key not null,
    product varchar(50) not null,
    quantity int
);

create table feb2025sales(
	id int primary key not null,
    product varchar(50) not null,
    quantity int
);

create table mar2025sales(
	id int primary key not null,
    product varchar(50) not null,
    quantity int
);

-- union results
-- 'union' -- excludes duplicates
-- 'union all' -- includes duplicates

select * from jan2025sales
union
select * from feb2025sales
union
select * from mar2025sales;









