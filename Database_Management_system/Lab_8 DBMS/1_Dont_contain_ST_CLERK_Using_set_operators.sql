--The HR department needs a list of departments for departments that do not contain the job 
--ID ST_CLERK. Use set operators to create this report

select department_id from departments
minus
select department_id
from employees
where job_id = 'ST_CLERK';