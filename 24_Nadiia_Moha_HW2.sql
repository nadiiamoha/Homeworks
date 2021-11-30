--1. Создать таблицу employees

create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

select * from employees;

--2. Наполнить таблицу employee 70 строками

insert into employees (employee_name)
values ('Wilfred Arnold'),
		('Jay Owens'),
		('Eileen Hodges'),
		('Willie Reyes'),
		('Daniel Love'),
		('Fred Reynolds'),
		('Erik Ray'),
		('Joan Wheeler'),
		('Regina Thompson'),
		('Jeremiah Dennis'),
		('Bryan Holt'),
		('Madeline Mcdonald'),
		('Juan Cummings'),
		('Philip Joseph'),
		('Kayla Conner'),
		('Mable Malone'),
		('Bobbie Hughes'),
		('Carla Potter'),
		('Randal Vega'),
		('Javier Sanchez'),
		('Caroline Nelson'),
		('Terry Beck'),
		('Willard Carroll'),
		('Renee King'),
		('Luis Santos'),
		('Gail Mathis'),
		('Harry Vasquez'),
		('Tina Fisher'),
		('Opal Day'),
		('Lynette Gardner'),
		('Patrick Bell'),
		('Rosie Ryan'),
		('Shane Anderson'),
		('Allen Alexander'),
		('Joanna Murphy'),
		('Delores Stokes'),
		('Arthur Casey'),
		('Catherine Blake'),
		('Martin Warner'),
		('Evelyn Chandler'),
		('Alexander Adams'),
		('Sandy Ramos'),
		('Bill Rodriguez'),
		('Irene Barrett'),
		('Margarita Peters'),
		('Bobby Fernandez'),
		('Penny Estrada'),
		('Gloria Myers'),
		('Kellie Black'),
		('Robin Bowman'),
		('Lucy Wright'),
		('Myra Blair'),
		('Adam Fitzgerald'),
		('Guillermo Rice'),
		('Maggie Weaver'),
		('Marion Graham'),
		('Joshua Todd'),
		('Caleb Boone'),
		('Brett Gilbert'),
		('Alyssa Newton'),
		('Christy Edwards'),
		('Cathy Sanders'),
		('Amber Cain'),
		('Tom Guzman'),
		('Ross Nichols'),
		('Edith Bennett'),
		('Woodrow Garrett'),
		('Bobbie Parker'),
		('Alonzo Knight'),
		('Rosalie Adkins');


select * from employees;

-- 3. Создать таблицу salary

create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- 4. Наполнить таблицу salary 16 строками

insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
	select * from salary;

-- 5. Создать таблицу employee_salary

create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

select * from employee_salary;

-- 6. Наполнить таблицу employee_salary 40 строками

insert into employee_salary (employee_id, salary_id)
values (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(7, 2),
		(9, 5),
		(13, 8),
		(18, 3),
		(21, 6),
		(24, 8),
		(27, 12),
		(31, 14),
		(34, 16),
		(37, 15),
		(42, 13),
		(44, 12),
		(48, 11),
		(53, 9),
		(2, 8),
		(57, 7),
		(59, 5),
		(66, 2),
		(72, 1),
		(100, 4),
		(102, 3),
		(105, 7),
		(108, 1),
		(111, 9),
		(123, 10),
		(167, 11),
		(170, 16),
		(180, 15),
		(190, 8);

select * from employee_salary;

-- 7. Создать таблицу roles

create table roles (
	id serial primary key,
	role_name int unique not null
);

-- 8. Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar (30);


select * from roles;

-- 9. Наполнить таблицу roles 20 строками

insert into roles (role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

	select * from roles;
	
-- 10. Создать таблицу roles_employee

create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

-- 11. Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id, role_id)
values (7,2),
	  (20, 4),
	  (3, 9),
	  (5, 13),
	  (23, 4),
	  (11, 2),
	  (10, 9),
	  (22, 13),
	  (21, 3),
	  (34, 4),
	  (6, 7),
	  (70, 19),
	  (68, 15),
	  (66, 13),
	  (61, 12),
	  (58, 10),
	  (55, 9),
	  (53, 2),
	  (51, 7),
	  (46, 1),
	  (42, 2),
	  (12, 3),
	  (17, 4),
	  (24, 8),
	  (28, 6),
	  (33, 2),
	  (39, 11),
	  (25, 20),
	  (27, 17),
	  (29, 16),
	  (32, 9),
	  (48, 15),
	  (57, 9),
	  (52, 10),
	  (69, 3),
	  (9, 2),
	  (8, 1),
	  (18, 11),
	  (30, 15),
	  (40, 12);
  
 select * from roles_employee;
