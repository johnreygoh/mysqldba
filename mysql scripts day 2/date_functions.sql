-- display format datae column
-- date format specifiers
-- %Y	2025
-- %y	25
-- %M	October
-- %m	10
-- %b	Oct
-- %D	13th
-- %d	13
-- %W	Monday
-- %H	24hr format
-- %h	12hr format
-- %i	minutes
-- %s	seconds
-- %p	AM/PM

-- select 
-- 	hired_date,
--     date_format(hired_date, '%M %d,%Y [%W] %h:%i %p'),
--     now(),
--     curdate()
-- from employees;

-- days each employee has been with the company
select
	hired_date,
    date_add(hired_date, interval 90 DAY),
    date_sub(hired_date, interval 5 DAY),
    year(hired_date),
    month(hired_date),
    day(hired_date),
    dayname(hired_date),
    monthname(hired_date),
	curdate(),
    datediff(curdate(),hired_date),
    timestampdiff(YEAR,hired_date,curdate()),
    timestampdiff(MONTH,hired_date,curdate()),
	date_sub(hired_date,interval weekday(hired_date)-1 DAY) as 'startOfWeek(Monday)',
	date_sub(hired_date,interval weekday(hired_date)+1 DAY) as 'startOfWeek(Sunday)',
    dayofyear(hired_date)
from employees;







