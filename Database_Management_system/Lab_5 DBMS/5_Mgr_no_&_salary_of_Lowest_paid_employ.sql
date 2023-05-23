--Create a query to display the manager number and the salary of the lowest-paid employee 
--for the manager. Exclude anyone whose manager is not known. Exclude any groups where 
--the minimum salary is $6,000 or less. Sort the output in descending order of salary

select manager_id, min(salary) "Minimum salary"
from employees
where manager_id is not null
group by manager_id
having min(salary)>6000
order by min(salary)desc;