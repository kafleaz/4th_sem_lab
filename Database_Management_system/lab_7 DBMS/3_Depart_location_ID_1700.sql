----The HR department needs a report that displays the last name, department number, job id 
--of all employees whose department location id is 1700.

select last_name, department_id, job_id
from employees
where department_id in (select department_id 
from departments
where location_id = 1700);
