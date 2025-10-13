-- concat
-- select 
-- 	concat(first_name,' ',last_name) as normalconcat,
--     concat_ws('-',first_name,last_name,salary) as concatwithseparator,
--     upper(first_name),
--     lower(last_name),
--     length(first_name),
--     substring(first_name,1,1) as firstnamefirstchar,
--     substring(last_name,1,3) as first3charLastname,
--     substring(first_name,length(trim(first_name))-2,3) as last3charFirstname,
-- 	left(last_name,2),
--     right(last_name,3)
-- from 
-- 	employees;

-- lpad(), trim(), reverse()
-- lpad = adds characters on the left
-- trim = removes spaces left & right
-- select
-- 	department_id,
--     lpad(department_id,5,'0'),
--     trim(first_name),
--     reverse(first_name),
--     replace(upper(first_name),'A','X')
-- from 
-- 	employees;




