use day_10_14_db;

select * from employees;

update employees set age = age + 1 where id = 1;


select * from employees as emp
where 
emp.department_id =(select id from departments where name = "営業部");

update 
employees as emp
set emp.age = emp.age + 2
where 
emp.department_id =(select id from departments where name = "営業部");

#inner join
select * from employees;

alter table employees
add deparment_name varchar(255);

#left join
select emp.*,coalesce(dt.name,"不明") from 
employees as emp
left join departments as dt
on emp.department_id = dt.id;


update employees as emp
left join departments as dt
on emp.department_id = dt.id
set emp.department_name = coalesce(dt.name,"不明");

--default追加
select * from customers;


show create table customers;
#check製薬削除
alter table customers drop constraint customers_chk_1;
describe customers;

alter table customers 
alter age set default 20;

insert into customers(id,name) values(2,"Jiro");

select * from customers;

#not null追加
alter table customers modify name varchar(255) not null;

insert into customers(id,name)values(3,null);

#check製薬の追加

alter table customers add constraint check_age check(age>=20);

describe customers;

alter table customers drop primary key;

#主キーを追加

alter table customers 
add constraint pk_customers primary key(id);

#外部キー
describe students;

show create table students;

alter table students drop constraint students_ibfk_1;

alter table students 
add constraint fk_scoools_students
foreign key(school_id) references schools(id);
