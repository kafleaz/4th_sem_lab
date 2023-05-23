select first_name, salary
from employees
where first_name = 'Neena';

select first_name, salary
from employees
where salary<(select salary from employees
where first_name='Neena');

select first_name, salary
from employees
where job_id='IT_PROG';

--all: Intersection of all output
select first_name, salary
from employees
where salary>ALL(select salary from employees
where job_id='IT_PROG');

--any: Union of all output
select first_name, salary
from employees
where salary>Any(select salary from employees
where job_id='IT_PROG');

select first_name, salary
from employees
where salary in (select salary from employees
where job_id='IT_PROG');