--The HR department needs a report that displays the last name and hire date for all employees 
--who were hired in 1994

select last_name, hire_date
from employees
where hire_date like '%93';