-- outer join

select*
from employees e full outer join departments d
on (e.department_id=d.department_id);

select*
from employees e left outer join departments d
on (e.department_id=d.department_id);

select*
from employees e right outer join departments d
on (e.department_id=d.department_id);

