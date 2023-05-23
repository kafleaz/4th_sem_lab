--Create a report for the HR department that displays the last name and salary of every 
--employee who reports to King.

select last_name,  salary
from employees
where manager_id = (select employee_id from employees
where last_name ='king');