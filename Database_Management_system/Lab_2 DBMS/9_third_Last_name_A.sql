--Display all employee last names in which the third letter of the name is a.

select last_name
from employees
where last_name like '__a%';