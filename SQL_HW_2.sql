create table employees(
id serial primary key,
employee_name varchar(50) not null
);
insert into employees(employee_name)
values ('one'),
('two'),
('three'),
('four'),
('five'),
('six'),
('seven'),
('eight'),
('nine'),
('ten'),
('eleven'),
('twelve'),
('thirteen'),
('fourteen'),
('fifteen'),
('sixteen'),
('seventeen'),
('eighteen'),
('nineteen'),
('twenty'),
('twenty_one'),
('twenty_two'),
('twenty_three'),
('twenty_four'),
('twenty_five'),
('twenty_six'),
('twenty_seven'),
('twenty_eight'),
('twenty_nine'),
('thirty'),
('thirty_one'),
('thirty_two'),
('thirty_three'),
('thirty_four'),
('thirty_five'),
('thirty_six'),
('thirty_seven'),
('thirty_eight'),
('thirty_nine'),
('forty'),
('forty_one'),
('forty_two'),
('forty_three'),
('forty_four'),
('forty_five'),
('forty_six'),
('forty_seven'),
('forty_eight'),
('forty_nine'),
('fifty'),
('fifty_one'),
('fifty_two'),
('fifty_three'),
('fifty_four'),
('fifty_five'),
('fifty_six'),
('fifty_seven'),
('fifty_eight'),
('fifty_nine'),
('sixty'),
('sixty_one'),
('sixty_two'),
('sixty_three'),
('sixty_four'),
('sixty_five'),
('sixty_six'),
('sixty_seven'),
('sixty_eight'),
('sixty_nine'),
('seventy');

select * from employees e 

create table salary_1(
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
(1100),
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

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values (4, 3),
(3, 5),
(2, 8),
(71, 9),
(9, 15),
(8,12),
(7, 11),
(6, 9),
(82, 13),
(14,7),
(13, 3),
(12, 8),
(11, 4),
(93, 5),
(16, 8),
(17, 2),
(18, 15),
(19, 12),
(104, 11),
(24, 9),
(23, 14),
(22, 6),
(21, 9),
(115, 7),
(26, 14),
(27, 13),
(28,3),
(29, 6),
(126, 2),
(31, 8),
(32, 12),
(33, 9),
(34, 11),
(137, 8),
(39, 12),
(38, 7),
(37, 5),
(148, 9),
(149, 10),
(150, 15);

create table roles_1(
id serial primary key,
role_name int  not null unique
);
 
alter table roles_1
alter column role_name type varchar(30)  using (role_name::varchar(30));

select * from roles_employee

insert into roles_1(role_name)
values ('Junior_Python_developer'),
('Middle_Python_developer'),
('Senior_Python_developer'),
('Junior_Java_developer'),
('Middle_Java_developer'),
('Senior_Java_developer'),
('Junior_javaScript_developer'),
('Middle_javaScript_developer'),
('Senior_javaScript_developer'),
('Junior_Manual_QA_engineer'),
('Middle_Manual_QA_engineer'),
('Senior_Manual_QA_engineer'),
('Project_Manage'),
('Designer'),
('HR'),
('CEO'),
('Sales_manage'),
('Junior Automation_QA_engineer'),
('Middle_Automation_QA_engineer'),
('Senior_Automation_QA_engineer');

create table roles_employee(
id serial primary key,
employee_id int  not null unique,
role_id  int  not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles_1(id)
);

insert into roles_employee(employee_id, role_id)
values (3, 18),
(27, 1),
(38, 11),
(32, 17),
(15, 5),
(59, 16),
(39, 15),
(8, 12),
(54, 7),
(62, 3),
(37, 8),
(36, 20),
(67, 9),
(34, 9),
(21, 14),
(69, 13),
(12, 10),
(58, 6),
(16, 4),
(57, 2),
(1, 6),
(45, 18),
(70, 20),
(23, 3),
(31, 1),
(49, 4),
(14, 14),
(35, 8),
(28, 19),
(47, 2),
(46, 10),
(20, 12),
(68, 11),
(7, 13),
(51, 15),
(2, 9),
(65, 16),
(17, 15),
(30, 5),
(11, 7);
