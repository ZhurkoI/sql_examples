select
	nullif( (select distinct salary
	from employee
	order by salary desc 
	offset 1 rows 
	fetch first 1 row only), null) as "SecondHighestSalary"