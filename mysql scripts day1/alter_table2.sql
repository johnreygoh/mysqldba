-- more alter table examples

-- drop column
-- alter table persons drop column address;

-- modify data type
-- alter table persons modify column email varchar(210);

-- add column 
alter table persons add column datehired date;
update persons set datehired = current_date();
 