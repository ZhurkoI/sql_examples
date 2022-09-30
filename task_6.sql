select
	students_per_course."class"
from
	(
	select
		count(student) as student_count,
		"class"
	from
		courses c
	group by
		"class") as students_per_course
where
	students_per_course.student_count >= 5