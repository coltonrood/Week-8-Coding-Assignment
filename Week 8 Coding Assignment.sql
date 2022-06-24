select t.title as "Job Title", count(t.title) as "Number of Employees born after 1965-01-01"
from employees.titles t
inner join employees.employees e 
on e.emp_no = t.emp_no
where e.birth_date > '1965-01-01'
group by title;


select t.title as "Job Title",
avg(s.salary) as "Average Salary of Position ($)"
from employees.titles t 
inner join employees.salaries s 
on s.emp_no = t.emp_no
group by title;


select sum(s.salary) as "Total Spent on Salary from 1990-1992",
 d.dept_name as "Department Name"
from employees.salaries s
inner join employees.dept_emp de 
on de.emp_no = s.emp_no
inner join employees.departments d
on de.dept_no = d.dept_no
where d.dept_name = "Marketing" 
and de.from_date > '1989-12-31' 
and de.to_date < '1993-01-01';