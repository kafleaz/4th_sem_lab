--Display the last name, salary and commission for all employees who earn commissions. sort 
--data in descending order of salary and commissions. 

select last_name, salary, commission_pct
from employees
--order by desc salary and commission_pct
where commission_pct is not null
order by salary desc, commission_pct desc;

