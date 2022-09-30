----- solution #1 -----
select	
	c."name" as "Customers"
from
	customers c
left join orders o on
	c.id = o.customerid
where
	o.customerid is null
	

----- solution #2 -----
select 
	c."name" as "Customers"
from
	customers c
where
	not exists (select *
		from
			orders o
		where
			c.id = o.customerid)