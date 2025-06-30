-- select statements, create views

describe samplesuperstore;

-- show all
select * from samplesuperstore;

-- show values from a column
select `ship mode` from samplesuperstore;

-- show distinct values only 
select distinct `ship mode` from samplesuperstore;
select distinct category from samplesuperstore;
select distinct region from samplesuperstore;

-- custom filtered columns
-- subcat, ship mode, sales, city for technology category
select `sub-category`, `ship mode`, city, sales
from samplesuperstore
where category = 'technology';

-- grouping and aggregation (function that calc over a group)
-- aggre: sum, average, count, max, min
-- how many transaction per region
select region, count(region) as 'count'
from samplesuperstore
group by region
order by count desc;

-- total sales per subcat
select `sub-category`, sum(sales) as 'total sales'
from samplesuperstore
group by `sub-category`
order by `total sales` desc;

-- create view
create view totalsalesByregion as
select region, sum(sales) as totalsales, avg(sales) as averagesales
from samplesuperstore
group by region
order by region asc;

-- drop view
drop view totalsalesbyregion;



