-- Customozing output using single-row functions
-- Using case-Manipulationfunctions
--Lower
--Upper
--Initcap

select first_name, salary
from employees
where lower(first_name) = 'neena';

select first_name, salary
from employees
where first_name = 'neena';

select first_name, salary
from employees
where  Upper(first_name)= 'NEENA';

select Upper (last_name) as "Last Name", Lower(first_name)
"First Name", salary
from employees;

select first_name, initcap(email) as "Email with initial caps", salary
from employees;

--Character manupalation functions
--(CONCAT, LENGTH, SUBSTR, INSTR, TRIM, LPAD, RPAD, REPLACE)

select first_name ||' '|| last_name as  full_name, salary
from employees;

select concat(concat(first_name,' '), Last_name) as
full_name, salary
from employees;

select first_name, last_name, length(first_name) as length, substr(last_name,2,4)
from employees;

select first_name, instr(lower(first_name),'n') as position
from employees
order by first_name;

select first_name, Lpad(salary, 10,'$') as Lpad, Rpad(salary,10,'#') as Rpad
from employees;

-- Number Function (Round, Trunc, MOD)
select round (46.2583,2), round(45.2583,0), round(46.2583,-1)
from dual;

select trunc (462.2583,2), trunc(452.2583,1), trunc(469.5583,-2)
from dual;

select first_name, salary, trunc(salary,-4)
from employees;

select first_name, salary, mod(salary,500) "status"
from employees;

select first_name, hire_date, trunc( (sysdate-hire_date)/365) as output
from employees;


