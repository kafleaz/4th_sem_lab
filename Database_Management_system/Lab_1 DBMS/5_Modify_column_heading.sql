--The HR department wants more descriptive column heading for its report on employees. 
--Modify the Task_1_3 to Name the column heading EMP #, Employee, Job and Hire Date, 
--respectively.

select employee_id as "EMP #" , last_name as Employee, job_id as  Job, hire_date as "Hire Date" 
from employees;