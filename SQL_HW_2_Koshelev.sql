create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (id, employee_name)
values (default, 'Vinsent');

select * from employees;


create table salary (
	id serial primary key,
	monthly_salary Int not null
);
insert into salary (id, monthly_salary)
values (default, 2500);


select * from salary;

create table employee_salary (
	id serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
);

DROP TABLE employee_salary; 

Insert into employee_salary (id, employee_id, salary_id)
Values (default,34,5);



select * from employee_salary;

create table roles (
	id serial primary key,
	role_name Int not null unique);


Alter table roles
alter column role_name type varchar(30)
Using role_name::varchar(30);

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');	

select * from roles;	

create table roles_employee (
	 id serial primary key,
	 employees_id Int not null unique,
	 role_id Int not null,
	 Foreign key (role_id)
	 	References roles (id),
	 Foreign key (employees_id)
		 References employees (id)	 
);  
Insert into roles_employee (id, employees_id, role_id)
Values (default, 44, 5);    

select * from roles_employee;


	