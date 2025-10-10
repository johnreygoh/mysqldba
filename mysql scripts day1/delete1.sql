-- delete records

-- delete all records in a table
-- truncate table persons;

-- delete a single record
-- delete from persons where personid = 4;

-- delete multiple
delete from persons where city = 'manila';
delete from persons where PersonID in (1,3);


