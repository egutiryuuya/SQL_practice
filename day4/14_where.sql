show databases;

use day_4_9_db;

show tables;

#usersの定義
describe users;

select * from users limit 10;

select * from users where name = "奥村　成美";

select * from users where birth_place = "日本";

select * from users where birth_place <>"日本" order by age;

#from > where > order by > limit の順番

select *from users where age > 50 limit 10

#update

update users set name = "奥山 成美" where id = 1;

select * from users where id = 1;

# delete
select * from users order by id desc limit 1;

delete from users where id = 200;