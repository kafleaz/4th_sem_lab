-- Modify lab_02_06.sql to display the last name, salary and commission for all employees 
--whose commission amount is 20%.

select last_name, salary, commission_pct
from employees
where commission_pct = 0.2;