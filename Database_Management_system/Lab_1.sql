select * from hr.employees;


select first_name, last_name, salary
from employees;


    -- Arithmetic Operators

select first_name, salary, 12 * salary
from employees;

select first_name as Name, salary Monthly_Salary, 12 * salary as "Annual salary"
from employees;

select first_name as Name, salary MOnthly_salary, (salary-0.13*salary)*12
from employees;

select first_name as Name, salary MOnthly_salary, (0.87*salary)*12
from employees;


select first_name, salary, salary+1000
from employees;


select first_name, salary,salary+12/100*salary
from employees;


select first_name, salary, (salary+1000)*12 as "Increased annual salary"
from employees;

select first_name, salary as "Monthly Salary", 1.1*salary as "New salary"
from employees;

--Using Null Value With arithmetic operator

describe employees;

select first_name, salary,  commission_pct
from employees;

select first_name, salary, commission_pct, salary+ salary*nvl(commission_pct,0) as total_income
from employees;

-- nvl(v1, v2);
-- if v1= null;  v1<--- V2
-- ifv1 != null v1=v1
select first_name, salary, commission_pct, salary*(1+nvl(commission_pct,0)) as total_income
from employees;

-- using Concatenation operator(||) --     

select first_name || last_name as Full_Name, Salary
from employees;

select first_name||'   '||last_name as "Full name", salary
from employees;

select 'The salary of ' || first_name || ' ' || 'is' ||' ' || salary as "Discriptive salary"
from employees;

select 'The Email address of employee_id ' || employee_id || ' is ' ||email as "Email Info"
from employees;

--Using Didtinct Function

select Department_id from employees;
select distinct (Department_id) from employees;

