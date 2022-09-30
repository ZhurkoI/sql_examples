select
	p.firstname "FirstName",
	p.lastname "LastName",
	a.city "City",
	a.state "State"
from
	person p
left join address a 
on
	p.personid = a.personid