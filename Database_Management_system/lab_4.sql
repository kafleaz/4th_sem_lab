select first_name, salary,job_id,
case job_id
    when 'IT_PROG' then salary*1.1
    when 'SA_REP' then salary*1.2
    when 'MK_MAN' then salary*1.3
    Else salary
end as "Updated Salary"
from employees;

select first_name, salary,department_id,
decode (department_id,10,salary*1.1,20,salary*1.2,30,salary*1.3,salary) as New_salary
from employees;
--decode(job_id, 'IT_PROG', salary*1.1,
--case field
--  when c1 then r1
--  when c2 then r2
--  when cn then rn
--  else rd
--end as alias
select first_name, salary,department_id,
case department_id
    when 10 then salary*1.1
    when 30 then salary*1.2
    when 100 then salary*1.3
    Else salary
end as "New Salary"
from employees;
-- --------------------------------------------------------------------------------------------
select last_name, hire_date
from employees
where hire_date like ('2003%');

select first_name , hire_date,
to_char(hire_date,'YYYY-MM-DD') as out
from employees
where hire_date like '2003%';

-- --------------------------------------------------------------------------------------------

select min (salary) min, max(salary) max, round(avg(salary),2) mean,
sum(salary) sum, count(*) total
from employees;

select avg(commission_pct) mean1, count(*)
from employees;

select round(avg(commission_pct),2) mean1,
round(avg(NVL(commission_pct,0)),2) mean2, count(*)
from employees;

select department_id, round(avg(salary),2) mean_salary, count(*)
from employees
group by department_id
order by department_id;

select department_id, round(avg(salary),2), count(*)
from employees
having avg(salary)>10000
group by department_id
order by department_id;

select *
from employees e join departments
using (department_id);

select *
from employees e join departments d
on (e.department_id=d.department_id);

select e.first_name, e.salary, e.department_id,d.department_name
from employees e join departments d
on (e.department_id=d.department_id)
where e.salary > 12000;

select e.first_name,d.department_name
from employees e join departments d
on (e.department_id=d.department_id)
where e.salary > 12000;