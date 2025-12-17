-- activity 1
create database activitydb;

-- create a table
use activitydb;

create table employees
(
	id int auto_increment primary key,
    firstname varchar(20) not null,
    lastname varchar(20) not null,
    department varchar(20) not null,
    yearhired int,
    salary int
);






