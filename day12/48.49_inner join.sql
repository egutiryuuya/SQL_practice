#tableの結合
show databases;
use day_10_14_db;

show tables;

select * from employees;
select * from departments;


#通常
select * from employees as employ
inner join departments as depart
on employ.department_id = depart.id;

#特定のカラムを取り出す場合
select employ.id,employ.first_name,employ.last_name,depart.id as department_id,depart.name as department_name from employees as employ
inner join departments as depart
on employ.department_id = depart.id;

#複数のレコードでひもづける
select * from students as student
inner join 
 users as user
 on student.first_name = user.first_name and student.last_name= user.last_name;
 
#= 以外で紐づける
select * from employees as employ
inner join 
	students as student
on employ.id < student.id;