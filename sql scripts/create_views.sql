-- create view
create view orderview1
as
select 
	`row id`,
    `order date`,
    `customer name`,
    `product name`,
    sales
from orders;
-----------------------
-- access the view
select * from orderview1;

----------------------
-- drop / delete view
drop view orderview1;

----------------------
-- create view with additional column?
create view adjustedSales
as
select 
	`order date`,
    `customer name`,
    `ship mode`,
    sales,
    (sales + 5000) as SalesAdjusment 
from orders;

select * from adjustedSales;










