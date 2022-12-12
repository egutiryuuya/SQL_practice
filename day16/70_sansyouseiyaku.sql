show databases;

use day_15_18_db;

show tables;

drop table students;

create table schools(
  id int primary key,
  name varchar(255)
);

create table students(
 id int primary key,
 name varchar(255),
 age int ,
 school_id int,
 foreign key(school_id) references schools(id)
 );
insert into schools values(1,"北工っ港");
insert into students values(1,"Taro",18,1);


#参照整合性エラー
update schools set id = 2;

delete from schools;

update students set school_id = 3;

drop table schools; 

#複数のカラムに外部キー
describe employees;

create table salaries(
  id int primary key,
  company_id int,
  employee_code char(8),
  payment int,
  paid_date Date,
  foreign key(company_id,employee_code) references employees(company_id,employee_code)
  );
  
 select * from employees;
 insert into salaries values(1,1,"00000001",1000,"2020-01-01");