create table emp
(
	id int primary key,
    firstname varchar(20) not null,
    lastname varchar(20) not null
);

insert into emp values 
(1,'ben','tolpo'),
(2,'erwin','tolpo'),
(3,'mon','tolpo');

select * from emp;

create table empwork
(
	id int,
    department varchar(20) not null,
    position varchar(20) not null,
    salary  decimal(10,2) not null
);

alter table empwork
add foreign key (id) 
references emp(id);

select * from empwork;

insert into empwork values
(1,'hr','manager',88000),
(2,'mis','developer',97000);

create table emppersonal
(
	id int,
    fathersname varchar(20) not null,
    mothersname varchar(20) not null,
    age int check(age > 2)
);

alter table emppersonal
add foreign key (id)
references emp(id);

insert into emppersonal values
(2,'tata','rara',44);

select * from emppersonal;

-- -----------------------------------
-- join
select 
	e.id,
    e.firstname,
    e.lastname,
    ew.department,
    ew.position,
    ew.salary,
    ep.fathersname,
    ep.mothersname,
    ep.age
from emp e 
left join empwork ew 
	on e.id = ew.id
left join emppersonal ep
	on e.id = ep.id
where e.firstname like 'e%' 
and ew.salary > 0;













