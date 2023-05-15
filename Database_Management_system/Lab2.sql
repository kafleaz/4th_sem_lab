-- Restricting and Sorting Data
select first_name, salary, Hire_Date
from employees
where salary= 10000;

select first_name, salary, hire_Date
from employees
where salary = 8000;


select first_name, salary, hire_Date
from employees
where first_name = neena;

select first_name, salary, hire_Date
from employees
where first_name = 'neena';

select first_name, salary, hire_Date
from employees
where first_name = 'Neena';

select first_name, salary, hire_Date
from employees
where hire_date = '24-jul-05';     

select first_name, job_id, salary
from employees
where salary in( 10000,12000,15000);

select first_name, job_id, salary
from employees
where salary between 10000 and 15000;

select first_name, job_id, salary
from employees
where salary not between 10000 and 15000;

select first_name, job_id, salary
from employees
where salary between 10000 and 15000;

select first_name, job_id, salary
from employees
where first_name in('Neena');

select first_name, job_id, salary
from employees
where first_name like ('N%');

select first_name, job_id, salary
from employees
where first_name like ('%n');

select first_name, job_id, salary
from employees
where first_name like ('%en');

select first_name, job_id, salary
from employees
where first_name like ('%x%');

select first_name, job_id, salary
from employees
where first_name like '___an';

select first_name, job_id, salary
from employees
where first_name like ('N%a');

select first_name, job_id, salary
from employees
where first_name like ('%a__');

select first_name, job_id, salary
from employees
where job_id like ('%MAN%');

desc employees;

select first_name, salary,commission_pct
from employees
where commission_pct is not null;

-- Logical Operators

select first_name, job_id, salary
from employees
where salary >12000 or job_id like ('%MAN%')
order by salary; 

select first_name, job_id, salary
from employees
where salary >10000 
and job_id like '%rep'
or job_id like ('%MAN%')
order by salary; 

select first_name, job_id, salary
from employees
where salary >10000 
and (job_id like '%rep'
or job_id like ('%MAN%'))
order by salary desc;

select &first_field, salary
from employees;

select first_name, department_id,salary
from employees
where &condition
order by salary;

select first_name , hire_date,to_char(hire_date,'YYYY-MM-DD') as out from employees;
