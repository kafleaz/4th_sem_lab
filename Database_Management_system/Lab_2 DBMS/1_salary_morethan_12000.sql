--Because of budget issues, the HR department needs a report that displays the last name and 
--salary employees earning more than $12,000. 

select last_name, salary
from employees
where salary > 12000;