/*The HR department wants a query to display the last name, job code, hire date and employee 
number for each employee, with the employee number appearing first. Provide an alias 
STARTDATE for the HIRE_DATE column.*/

select employee_id,last_name, job_id, hire_date as STARTDATE
from employees;