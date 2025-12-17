-- DQL
select * from orders;

select * from orders
where `ship mode` = 'first class'; 

select * from orders
where `customer name` like 'c%';

select count('row id') from orders;

select distinct `customer name` from orders;

select count(distinct `customer name`) 
from orders;

select distinct `product name` 
from orders
order by `product name` desc;

select 
	`product name` as product,
    `ship mode` as shipping
from orders
where
	`ship mode` like 'fi%';
   
   
-- extracting strings
-- [order year] [product] [sales]
select 
	right(`order date`,4) as 'order year',
    `product name` as product,
    sales
from orders
order by sales desc;

-- aggregation
-- group by <column>
-- aggregate functions 
-- (sum(),avg(),min(),max())
select
	right(`order date`,4) as Year,
	sum(sales) as TotalSales,
    avg(sales) as AverageSales,
    max(sales) as MaxSales,
    min(sales) as MinSales,
    count(sales) as NumTransactions
from orders
group by right(`order date`,4)
having Year >= 2016;


---------------------------------

-- add orderYear column
alter table orders add orderYear int;

update orders
set orderYear = right(`order date`,4);

select 
	`order date`,orderYear
from orders;







