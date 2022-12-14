SHOW DATABASES;

USE day_15_18_db;

show tables;

select * from employees;

update employees set name = "Jiro" where employee_code ="00000002";
describe employees;

alter table employees add constraint unique_employees_name unique(name);

select 
*
from information_schema.key_column_usage
where 
	table_name ="employees";
	
alter table employees drop constraint unique_employees_name;

alter table employees add constraint unique_employees_name unique(name,age);

insert into employees values(2,"00000003","Taro",19);


--create文を確認
show create table employees;

