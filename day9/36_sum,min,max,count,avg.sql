#集計関数
select * from customers where name is null;

#count(主キーは高速)
select count(id) from customers; #レコード数
select count(name) from customers; #列指定（この列に何行入っているか）
select * from customers;
select count(name) from customers where id > 80;

#maxが最大,minが最小
select max(age),min(age) from users where birth_place = "日本";
select max(birth_day), min(birth_day) from users;

#sum(合計値)
select sum(salary) from employees;

select * from employees;
select avg(salary) from employees;

#avgはnullの場合が面倒
create table tmp_count(
num int);

show tables;

select * from tmp_count;
insert into tmp_count values(1);
insert into tmp_count values(2);
insert into tmp_count values(3);
insert into tmp_count values(null);

select avg(coalesce(num,0)) from tmp_count;
