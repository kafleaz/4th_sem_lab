--Create a report that displays the employee number, last name, and salary of all employees 
--who earn more than the average salary. Sort the results in ascending order by salary.

select employee_id, last_name, salary
from employees
where salary >(select avg(salary) from employees)
order by salary;