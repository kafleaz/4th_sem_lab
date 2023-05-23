--The HR department need a report of all employees. Write a query to display the last name, 
--department number, and department name for all employees.

--select * from departments;

select last_name, e.department_id, d.department_name
from employees e join departments d
on(e.department_id= d.department_id);