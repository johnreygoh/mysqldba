-- reset database if modified
drop database if exists testdatabase2;
create database testdatabase2;
use testdatabase2;

-- departments
create table Departments(
	department_id int primary key auto_increment,
    department_name varchar(50) not null 
);

-- employees
create table Employees(
	employee_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    hired_date date,
    salary decimal(10,2),
    department_id int,
    foreign key (department_id) references Departments(department_id)
);

insert into Departments (department_name)
values 
	('Engineering'),
	('Sales'),
	('Marketing'),
	('Human Resources'),
	('Support'),
	('Accounting');

insert into Employees (first_name, last_name, hired_date, salary, department_id)
values
	('Alice','Reyes','2022-01-15',80000.00,1),
	('Bob','Dylan','2021-03-22',85000.00,5),
	('Charlie','Santos','2023-05-10',60000.00,2),
	('Diana','Jose','2020-07-01',85000.00,3),
	('Evan','Sanchez','2024-02-28',72000.00,1),
	('Fiona','Ramos','2022-11-30',120000.00,1),
	('George','Reyes','2023-08-19',65000.00,4),
	('Harry','Ponner','2020-09-01',78000.00,1),
	('Ivy','Lang','2024-01-20',50000.00,2),
	('Jaja','Tomas','2023-01-15',90000.00,NULL);
    







