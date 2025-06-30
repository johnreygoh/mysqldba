-- for indexing and constraints
-- new database
-- create database if not exists mysqlday2;
use mysqlday2;
-- commit;

drop table if exists mysqlday2.employees;
drop table if exists mysqlday2.departments;
-- commit;

create table mysqlday2.departments(
	department_id int primary key auto_increment,
    department_name varchar(100) unique not null
);
-- commit;

create table mysqlday2.employees(
	employee_id int primary key auto_increment,
    employee_name varchar(100) not null,
    email varchar(100) unique not null,
    salary decimal(10,2) check (salary >= 10000),
    department_id int,								-- foreign key to the other table
    created_at timestamp default current_timestamp,
    foreign key (department_id) references departments(department_id)
);
-- commit;

-- add records
insert into mysqlday2.departments (department_name) 
values 
	('HR'),
	('Finance'),
	('Engineering');
-- commit;

insert into mysqlday2.employees (employee_name, email, salary, department_id)
values
	('jojo', 'jojo@abc.com',50000,1),
	('alice', 'alice@abc.com',60000,2),
	('henry', 'henry@abc.com',55000,3);
-- commit;hp

-- create index
create index idx_employee_name on mysqlday2.employees(employee_name);
create index idx_department_name on mysqlday2.departments(department_name);

-- show index
show index from mysqlday2.employees;
show index from mysqlday2.departments;

-- delete index
drop index idx_employee_name on mysqlday2.employees;
drop index idx_department_name on mysqlday2.department;





    
    
    
    
    