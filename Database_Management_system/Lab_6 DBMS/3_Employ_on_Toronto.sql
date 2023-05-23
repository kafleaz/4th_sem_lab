-- The HR department needs a report of employees in Toronto. Display the last name, job, 
--department number, department name and city for all employees who work in Toronto

select e.last_name, e.job_id, e.department_id, d.department_name, l.city
from employees e join departments d 
on(e.department_id= d.department_id)
join locations l 
on ( l.location_id= d.location_id);