-- Write a query that displays the last name and the length of the last name for all employees 
--whose name starts with letters J, A or M. Give each column an appropriate label. Sort the 
--results by the employees' last names.

select last_name as Name, length(last_name) as LENGTH
from employees
where last_name like 'J%' 
or last_name like 'A%' 
or last_name like 'M%';
order by last_name;
