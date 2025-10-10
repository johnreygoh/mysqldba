-- create table from another table
use testdatabase;

create table Employees 
as
select personid,firstname,lastname,city
from persons;