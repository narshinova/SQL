select e.employee_name 
from employees e
join employee_salary em 
on e.id=em.employee_id;

select e.employee_name, s.monthly_salary 
from employees e
join employee_salary em 
on e.id=em.employee_id
join salary s 
on em.salary_id=s.id
where s.monthly_salary<2000;

select*
from employee_salary em;

select em.employee_id, s.monthly_salary 
from employees e
right join employee_salary em 
on e.id=em.employee_id
join salary s 
on em.salary_id=s.id
where employee_name is null;

select em.employee_id, s.monthly_salary 
from employees e
right join employee_salary em 
on e.id=em.employee_id
join salary s 
on em.salary_id=s.id
where employee_name is null 
and s.monthly_salary<2000;

select e.employee_name, re.role_id  
from employees e 
join roles_employee re
on e.id=re.employee_id;

select e.employee_name, r1.role_name 
from employees e 
join roles_employee re
on e.id=re.employee_id
join roles_1 r1
on re.role_id=r1.id
where r1.role_name like '%Java%';

select e.employee_name, r1.role_name 
from employees e 
join roles_employee re
on e.id=re.employee_id
join roles_1 r1
on re.role_id=r1.id
where r1.role_name like '%Python%';

select e.employee_name, r1.role_name 
from employees e 
join roles_employee re
on e.id=re.employee_id
join roles_1 r1
on re.role_id=r1.id
where r1.role_name like '%QA%';

select e.employee_name, r1.role_name 
from employees e
join roles_employee re on e.id=re.employee_id
join roles_1 r1 on re.role_id=r1.id
where r1.role_name like '%Manual_QA_%';

select e.employee_name, r1.role_name 
from employees e 
join roles_employee re
on e.id=re.employee_id
join roles_1 r1
on re.role_id=r1.id
where r1.role_name like '%Automation_QA_%';

select e.employee_name, r1.role_name 
from employees e 
join roles_employee re
on e.id=re.employee_id
join roles_1 r1
on re.role_id=r1.id
where r1.role_name like '%Automation_QA_%';

select employee_name, monthly_salary,r1.role_name 
from employees e
join employee_salary em on e.id=em.employee_id
join salary s on em.salary_id=s.id
join roles_employee re on e.id=re.employee_id
join roles_1 r1 on re.role_id=r1.id
where r1.role_name like '%Junior%';

select employee_name, monthly_salary,r1.role_name 
from employees e
join employee_salary em 
on e.id=em.employee_id
join salary s 
on em.salary_id=s.id
join roles_employee re
on e.id=re.employee_id
join roles_1 r1
on re.role_id=r1.id
where r1.role_name like '%Middle%';

select employee_name, monthly_salary,r1.role_name 
from employees e
join employee_salary em 
on e.id=em.employee_id
join salary s 
on em.salary_id=s.id
join roles_employee re
on e.id=re.employee_id
join roles_1 r1
on re.role_id=r1.id
where r1.role_name like '%Senior%';

select r.role_name, s.monthly_salary 
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
where r.role_name  like '%Java_%';

select r.role_name, s.monthly_salary 
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
where r.role_name  like '%Java_%';

select r.role_name, s.monthly_salary 
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
where r.role_name  like '%Python%';

select r.role_name, s.monthly_salary, e.employee_name  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%Junior_Python%';

select r.role_name, s.monthly_salary, e.employee_name  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%Middle_javaScript%';

select r.role_name, s.monthly_salary, e.employee_name  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%Senior_Java%';

select r.role_name, s.monthly_salary  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where (r.role_name  like '%QA%') and (r.role_name  like '%Junior%');

select r.role_name, s.monthly_salary  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%Junior%';

select  avg(s.monthly_salary) as avgsalary_junior  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%Junior%';

select  sum(s.monthly_salary) as sumsalary_javaScript  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%javaScript%';

select  min(s.monthly_salary) as minsalary_QA  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%QA%';

select  max(s.monthly_salary) as maxsalary_QA  
from roles_employee re 
join roles_1 r on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
join employees e on e.id=es.employee_id 
where r.role_name  like '%QA%';

select  count(r.role_name) 
from roles_employee re
join roles_1 r  on re.role_id=r.id
where r.role_name  like '%QA%';

select  count(r.role_name) 
from roles_employee re
join roles_1 r  on re.role_id=r.id
where r.role_name  like '%Middle%';

select  count(r.role_name) 
from roles_employee re
join roles_1 r  on re.role_id=r.id
where r.role_name  like '%developer%';
 
select  sum(s.monthly_salary) 
from roles_employee re
join roles_1 r  on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id 
where r.role_name  like '%developer%';

select  sum(s.monthly_salary) 
from roles_employee re
join roles_1 r  on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id; 

select  *
from roles_employee re join roles_1 r  on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id 
order by r.role_name;

select  r.role_name, s.monthly_salary 
from roles_employee re join roles_1 r  on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
where s.monthly_salary between 1700 and 2300
order by r.role_name;

select  r.role_name, s.monthly_salary 
from roles_employee re join roles_1 r  on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
where s.monthly_salary <2300
order by r.role_name;

select  r.role_name, s.monthly_salary 
from roles_employee re join roles_1 r  on re.role_id=r.id
join employee_salary es on re.employee_id=es.employee_id 
join salary s on s.id=es.salary_id
where s.monthly_salary in (1100,1500,200)
order by r.role_name;
