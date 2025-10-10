-- conditional updates

update persons 
set
	lastname = 'duran',
    datehired = current_date(),
    city = 'pasig',
    email = concat(firstname,'.',lastname,'@abc.com')
where
	personid = 4 and firstname = 'kevin';

