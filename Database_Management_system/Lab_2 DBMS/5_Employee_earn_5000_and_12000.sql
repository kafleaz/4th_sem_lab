--Modify task_2_3 to list the last name and salary of employees who earn between $5,000 and 
--$12,000 and are in department 20 or 50. Label the columns Employee and Monthly salary, 
--respectively

select last_name as "Employee" , salary as "Monthly Salary", department_id
from employees
where salary between 5000 and 12000 
and department_id=20 or department_id=50;
