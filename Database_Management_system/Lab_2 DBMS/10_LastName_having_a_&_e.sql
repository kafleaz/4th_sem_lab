--Display the last names of all employees who have both an a and e in their last names.

select last_name
from employees
where last_name like '%a%' and last_name like '%e%';