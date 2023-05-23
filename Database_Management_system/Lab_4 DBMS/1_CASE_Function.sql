--Using CASE function, write a query that displays the grade of all employees based on the 
--value of the column JOB_ID, using the following data

select job_id,
CASE job_id
when 'AD_PRES' then 'A'
when 'ST_MAN' then 'B'
when 'IT_PROG' then 'C'
when 'SA_REP' then 'D'
when 'ST_CLERK' then 'E'
Else '0'
END grade
from employees;