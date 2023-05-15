--Modify your task_03_01.sql query to add a column that subtracts the old salary from the new 
--salary. Label the column Increase

select employee_id, last_name, salary, salary*0.155 as "New Salary",
salary - (salary*0.155) as Increase
from employees;