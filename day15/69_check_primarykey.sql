use day_15_18_db;

#チェック制約
create table customers(
id int primary key,
name varchar(255),
age int check(age >= 20)
);

insert into customers values(1,"Taro",21);
insert into customers values(1,"Taro",19);

#複数のカラムに対するチェック製薬

create table students(
id int primary key,
name varchar(255),
age int,
gender char(1),
constraint chk_students check((age>=15 and age <=20)and(gender = "F"or gender ="M"))
);

insert into students values(1,"Taro",18,"M");
insert into students values(3,"Tar",14,"F");

insert into students values(null,"jitr",16,"M");

create table employees(
company_id int,
employee_code char(8),
name varchar(255),
age int,
primary key(company_id,employee_code)
);

insert into employees values
(null,"00000001","Taro",19);

insert into employees values
(1,"00000002","Taro",19);

create table tmp(
company_id int,
employee_code char(8),
name varchar(255),
unique(company_id,employee_code)
);

