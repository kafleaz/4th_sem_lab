select employee_id, job_id
from employees
union 
select employee_id, job_id
from job_history;

select employee_id, salary
from employees
union 
select employee_id, null
from job_history;

select employee_id, job_id
from employees
intersect
select employee_id, job_id
from job_history;

select employee_id, job_id
from employees
minus
select employee_id, job_id
from job_history;