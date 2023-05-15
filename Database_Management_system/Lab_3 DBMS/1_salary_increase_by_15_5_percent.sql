--The HR department needs a report to display the employee number, last name, salary, and
--salary increased by 15.5% (expressed as a whole number) for each employee. Label the 
--column New Salary

select employee_id, last_name, salary, salary*0.155 as "New Salary"
from employees;