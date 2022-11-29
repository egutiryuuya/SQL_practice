show databases;
use day_4_9_db;

#union 重複は削除
select * from new_students
union
select * from students
order by id;

#重複を削除しない
select * from new_students
union all
select * from students
order by id;

select * from students where id < 10
union all 
select * from students where id > 250;

select id , name from students where id < 10
union
select age , name from users where id < 10;

select id,name,height from students
union
select age,name from users;

