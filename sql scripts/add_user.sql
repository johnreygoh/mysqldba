-- create user
create user 'admin2'@'localhost'
identified by 'Password$123';

-- grant privs
grant all privileges
on *.*
to 'admin2'@'localhost'
with grant option;
