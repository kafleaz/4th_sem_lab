--The HR department has requested a report of all employees and their job IDs. Display the 
--last name concatenated with the job ID (Separated by a comma and space) and name the 
--column Employee and Title.

select last_name||','||' '||job_id as "Employee and Title"
from employees;