--Find the highest, lowest, sum, and average salary of all employees. Label the columns 
--Maximum, Minimum, Sum and Average respectively. Round your results to the nearest whole 
--number. 

select round(max(salary),0) "Maximum",
round(min(salary),0) "Minimum",
round (sum(salary),0) "Sum",
round (avg(salary),0) "Average"
from employees;
