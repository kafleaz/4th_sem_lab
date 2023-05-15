--Display the last name and job title of all employees who do not have a manager

select last_name, job_id
from employees
where manager_id is NULL;


