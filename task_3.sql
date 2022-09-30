select
	e1."name" as "Employee"
from
	employee e1
left join employee e2 on
	e1.managerid = e2.id
where
	e2.id is not null
	and e1.salary > e2.salary