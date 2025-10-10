-- using constraints
use testdatabase;

create table products(
	id int primary key auto_increment,			-- pk=unique+not null,use pk to connect fk	
	productname varchar(100) not null,
    unitprice int not null
);

-- modify table column to remove constraints
-- alter table products modify unitprice int not null;
alter table products modify id int;
-- remove primary key
alter table products drop primary key; 

-- set a col to be not null and pk
alter table products modify id int not null auto_increment;
alter table products add primary key (id);

-- set unique constraint
alter table products modify productname varchar(100) not null unique;

-- set check constraint
alter table products add check(unitprice <= 1000);

-- remove check constraint
alter table products drop constraint CONSTRAINT_1;

-- set default constraint
alter table products alter unitprice set default 100;

-- remove default constraint
alter table products alter unitprice drop default;

