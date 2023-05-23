-- Find the difference between the highest and lowest salaries. Label the column 
--DIFFERENCE.

select max(salary) - min(salary) "DIFFERENCE"
from employees;