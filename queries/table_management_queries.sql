# create database
create database adpdatabase1;
use adpdatabase1;

-- table management
create table employeerecords
(
	empid int(4) primary key not null auto_increment,
    firstname varchar(20), -- allows null value
    lastname varchar(20),
    department varchar(20),
    msalary decimal(8,2)
);

-- check table columns
describe employeerecords;

-- add column
alter table employeerecords 
add column position varchar(20);

-- remove column
alter table employeerecords
drop column position;

-- add column in a position
alter table employeerecords
add column position varchar(20)
after lastname;

-- modify data type of column
alter table employeerecords
modify column salary int(10);

-- rename column
-- alter table employeerecords
-- rename column msalary to salary;
alter table employeerecords
change column msalary salary int(4);

-- add record
insert into employeerecords
(
	firstname,lastname,position,department,salary
) values
(
	'kevin','santos','dev','mis',69000
);

-- view the records
select * from employeerecords;

-- delete contents, but keep the table and its structure
truncate table employeerecords;

-- delete the table
drop table employeerecords;
