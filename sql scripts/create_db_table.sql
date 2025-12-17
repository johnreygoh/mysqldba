-- create database
create database db2;

-- create table
use db2;
create table products
(
	prodid int auto_increment primary key,
    pname varchar(40) not null unique,
    stocks int,
    expiration date
);