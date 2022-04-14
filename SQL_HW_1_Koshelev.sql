--Вывести всех студентов в таблице
SELECT * FROM students;
--Вывести только Id пользователей
SELECT id FROM students;
--Вывести только имя пользователей
SELECT name FROM students;
--Вывести только email пользователей
SELECT email FROM students;
--Вывести имя и email пользователей
SELECT name,email FROM students;
--Вывести id, имя, email и дату создания пользователей
SELECT name, email, created_on FROM students
--Вывести пользователей где password 12333
where password = '12333';
--Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT name,created_on FROM students
where created_on = '2021-03-26 00:00:00';
--Вывести пользователей где в имени есть слово Анна
SELECT name FROM students
where name = 'Анна';
 --Вывести пользователей где в имени в конце есть 8
SELECT name FROM students 
WHERE name like '%8';	--!
--Вывести пользователей где в имени в есть буква а
SELECT name FROM students 
WHERE name like '%а%';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT name,created_on FROM students
where created_on = '2021-07-12 00:00:00';
--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT name,created_on,password FROM students
where created_on = '2021-07-12 00:00:00'AND password = '1m313';
--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
SELECT name,created_on,password FROM students
where created_on = '2021-07-12 00:00:00'AND name like '%Andrey%';
--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT name,created_on,password FROM students
where created_on = '2021-07-12 00:00:00'AND name like '%8%';
--Вывести пользователя у которых id равен 10
select id,name from students
where id ='10';
--Вывести пользователя у которых id равен 53
select id,name from students
where id ='53';
--Вывести пользователя у которых id больше 40
select id, name from students
where id > '40';
--Вывести пользователя у которых id меньше 30
select id, name from students
where id < '30';
-- Вывести пользователя у которых id меньше 27 или больше 88
select id, name from students
where id <'27' or id >'88';
--Вывести пользователя у которых id меньше либо равно 37 -!
select id, name from students
WHERE id >= 37  
ORDER BY id;
-- Вывести пользователя у которых id между 80 и 90
select id, name from students
where id between '80' and '90';
--Вывести пользователей где password равен 12333, 1m313, 123313
select id,name from students
 WHERE password IN ('12333', '1m313', '123313');
--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select created_on,name from students
 WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
--Вывести минимальный id
SELECT MIN(id)
FROM students;
--Вывести максимальный
SELECT MAX(id)
FROM students;
--Вывести количество пользователей
SELECT COUNT (name)
FROM students;
 --Вывести id пользователя, имя, дату создания пользователя. 
 --Отсортировать по порядку возрастания даты добавления пользоватлеля.
 select id, name, created_on from students
 ORDER BY created_on;
--Вывести id пользователя, имя, дату создания пользователя. 
--Отсортировать по порядку убывания даты добавления пользоватлеля.
 select id, name, created_on from students
 ORDER BY created_on DESC;