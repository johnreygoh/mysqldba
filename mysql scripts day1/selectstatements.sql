use testdatabase;
-- fetch all records
-- select * from orders;

-- fetch spec cols
-- if cols are using names that have keywords, use backticks `
-- select 
-- 	`row id` as ROWID,
--     `customer name` as CUST_NAME,
--     category,
--     sales 
-- from orders;

-- fetch columns in a table
-- describe orders;

-- fetch distinct values
-- distinct values category column?
-- select category from orders;

-- how many per distinct values category?
-- select 
-- 	category,
-- 	count(category) 
-- from orders
-- group by category;

-- conditional fetch
-- get records ship mode = first class
-- select * from orders where `ship mode` = 'first class';

-- count records ship mode = first class
-- select 
-- 	count(*) as 'first class shipping transactions'
-- from orders 
-- where `ship mode` = 'first class';

-- get records customer names starts with 'san' + either d or j
-- select distinct `customer name` 
-- from orders
-- where `customer name` like '%san%';				-- % any number of wildcards
-- where `customer name` regexp 'san[dj]';			-- [] inclusion chars
-- where `customer name` regexp 'san[^dj]';			-- [^] exclusion chars
-- where `customer name` regexp 'sand|sanj';		-- | or (anywhere in the string)
-- where `customer name` regexp '^.{10}$';				-- set number  of chars



