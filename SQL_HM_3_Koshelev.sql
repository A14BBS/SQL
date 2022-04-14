--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
Select employee_name, m.monthly_salary
From employees e  
Inner Join employee_salary es on es.employee_id = e.id 
inner join salary m on salary_id= m.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
Select employee_name, m.monthly_salary
From employees e  
Inner Join employee_salary es on es.employee_id = e.id 
inner join salary m on salary_id= m.id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.).
select employees.employee_name, salary.monthly_salary
from employees
full outer join employee_salary on employees.id= employee_salary.employee_id 
full outer join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is not null and employees.employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary
from employees
full outer join employee_salary on employees.id= employee_salary.employee_id 
full outer join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary <2000;

--5.Найти всех работников кому не начислена ЗП.
select e.employee_name, s.monthly_salary
from employees e 
full outer join employee_salary es on e.id= es.employee_id 
full outer join salary s on es.salary_id = s.id 
where s.monthly_salary is null and e.employee_name is not null;

--6. Вывести всех работников с названиями их должности.
select e.employee_name,r.role_name 
from employees e 
join roles_employee re on e.id = re.employees_id 
join roles r on re.role_id= r.id 
where e.employee_name is not null;

--7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on e.id = re.employees_id 
join roles r on re.role_id= r.id
where r.role_name like '%Java %';

--8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on e.id = re.employees_id 
join roles r on re.role_id= r.id 
where r.role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on e.id = re.employees_id 
join roles r on re.role_id= r.id  
where r.role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on e.id =re.employees_id 
join roles r on re.role_id = r.id
where r.role_name like '%Manual%';

--11. Вывести имена и должность автоматизаторов QA.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on e.id = re.employees_id 
join roles r on re.role_id = r.id
where role_name like '%Auto%';

--12. Вывести имена и зарплаты Junior специалистов.
select e.employee_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employees_id 
join roles r on re.role_id = r.id
join employee_salary es on e.id = es.employee_id 
join salary s on s.id=es.salary_id
where r.role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов.
select e.employee_name, s.monthly_salary 
from employees e 
join roles_employee re on re.employees_id =e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where r.role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов.
select e.employee_name, s.monthly_salary 
from employees e 
join roles_employee re on re.employees_id =e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where r.role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков.
select s.monthly_salary 
from employees e 
join roles_employee re on re.employees_id =e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where r.role_name Like '%Jav%' and s.monthly_salary is not null;

--16. Вывести зарплаты Python разработчиков
select s.monthly_salary 
from employees e 
join roles_employee re on re.employees_id =e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where r.role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков.
select e.employee_name, s.monthly_salary 
from employees e 
join roles_employee re on re.employees_id =e.id 
join roles r on e.id =re.role_id
join employee_salary es ON e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Junior%';

--18. Вывести имена и зарплаты Middle JS разработчиков.
select e.employee_name, s.monthly_salary 
from employees e 
full outer join roles_employee re on e.id = re.employees_id 
full outer join roles r on r.id = re.role_id 
full outer join employee_salary es on es.employee_id =e.id
full outer join salary s on es.salary_id = s.id
where r.role_name like '%Middle%' and r.role_name like '%Script%';

--19. Вывести имена и зарплаты Senior Java разработчиков.
select e.employee_name, s.monthly_salary 
from employees e 
full outer join roles_employee re on e.id = re.employees_id 
full outer join roles r on r.id = re.role_id 
full outer join employee_salary es on es.employee_id =e.id
full outer join salary s on es.salary_id = s.id 
where r.role_name like '%Sen%' and r.role_name like '%Java%';

--20. Вывести зарплаты Junior QA инженеров.
select s.monthly_salary 
from employees e 
full outer join roles_employee re on e.id = re.employees_id 
full outer join roles r on r.id = re.role_id 
full outer join employee_salary es on es.employee_id =e.id
full outer join salary s on es.salary_id = s.id
where r.role_name like '%Jun%'and r.role_name like '%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов.
select avg(s.monthly_salary ) as "J"
from employees e
left outer join roles_employee re on re.employees_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  role_name Like '%Jun%';

--22. Вывести сумму зарплат JS разработчиков.
select avg(s.monthly_salary ) as "J"
from employees e
left outer join roles_employee re on re.employees_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  role_name Like '%Script%';

--23. Вывести минимальную ЗП QA инженеров.
select Min(s.monthly_salary ) as "Общак QA"
from employees  e
left outer join roles_employee re on re.employees_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  role_name Like '%QA%';

--24. Вывести максимальную ЗП QA инженеров.
select Max(s.monthly_salary ) as "Q"
from employees  e
left outer join roles_employee re on re.employees_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  role_name Like '%QA%';

--25. Вывести количество QA инженеров.
select count(role_name ) as "количество QA "
from employees  e
left outer join roles_employee re on re.employees_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  role_name Like '%QA%';

--26. Вывести количество Middle специалистов.
 select count (role_name) as "количество Middle"
from employees  e
left outer join roles_employee re on re.employees_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  role_name Like '%Middle%' ;

--27. Вывести количество разработчиков.
select count(role_name) as "Количество"
from employees  e
full outer join roles_employee re on re.employees_id=e.id
full outer join roles r on r.id=re.role_id
full outer join employee_salary es on e.id=es.employee_id
full outer join salary s on s.id=es.salary_id
where  role_name Like '%dev%';

--28.Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary ) as "Fond"
from employees  e
full outer join roles_employee re on re.employees_id=e.id
full outer join roles r on r.id=re.role_id
full outer join employee_salary es on e.id=es.employee_id
full outer join salary s on s.id=es.salary_id
where  role_name Like '%dev%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастан.
select e.employee_name, s.monthly_salary, r.role_name 
from employees  e 
join roles_employee re on re.employees_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
order by e.employee_name;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
select e.employee_name, s.monthly_salary, r.role_name
from employees  e 
join roles_employee re on re.employees_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

--31.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.
select e.employee_name, s.monthly_salary, r.role_name
from employees  e 
join roles_employee re on re.employees_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where s.monthly_salary <2300
order by s.monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.
select e.employee_name, s.monthly_salary, r.role_name 
from employees  e 
join roles_employee re on re.employees_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where s.monthly_salary in (1100,1500,2000)
order by s.monthly_salary;