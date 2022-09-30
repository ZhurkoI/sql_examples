select
	email as "Email"
from
	(
	select
		email ,
		count(*) as "number"
	from
		person
	group by
		email  
) as "buplicated_emails"
where
	buplicated_emails.number > 1