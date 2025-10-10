-- aggregate functions

-- sum of sales
-- select round(sum(sales),2) as totalSales from orders;

-- sum of sales per category
-- select
-- 	category,
--     round(sum(sales),2) as TotalSales
-- from orders
-- group by category
-- order by TotalSales desc;


-- get the ff:
-- by product name=total sales, ave sales, max sales, min sales, count of sales
-- select 
-- 	`product name`,
--     round(sum(sales),2) as TotalSales,
--     round(avg(sales),2) as AverageSales,
-- 	round(max(sales),2) as MaxSales,
-- 	round(min(sales),2) as MinSales,
-- 	count(*) as CountOfSales
-- from orders
-- group by `product name`
-- order by `product name`;


-- top5 product names by total sales
-- select 
-- 	`product name`,
--     round(sum(sales),2) as TotalSales
-- from orders
-- group by `product name`
-- order by TotalSales desc
-- limit 5;

-- compare totalsales ship mode (first class) vs ship mode (standard class) 
-- for each region
-- select 
-- 	region,
--     sum(case when `ship mode` = 'first class' then sales else 0 end) as FirstClassTotalSales,
--     sum(case when `ship mode` = 'standard class' then sales else 0 end) as StandardClassTotalSales
-- from orders
-- group by region;

-- sum if
select 
	region,
    sum(if(`ship mode`='first class',sales,0)) as FirstClassTotalSales,
    sum(if(`ship mode`='standard class',sales,0)) as StandardClassTotalSales
from orders
group by region
order by region asc;







