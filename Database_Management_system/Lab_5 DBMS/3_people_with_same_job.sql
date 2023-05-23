--Write a query to display the number of people with the same job.

select job_id, count(*)
from employees
group by job_id;