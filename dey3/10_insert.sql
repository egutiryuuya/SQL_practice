select database();

#テーブル作成
create table people(
id int primary key,
name varchar(50),
birth_day date default "1990-01-01"
);

# insert1
insert into people values(1,"tarou","2001-01-01");

#insert カラム指定
insert into people(id,name) values(2,"jiro");

#select
select * from people;

#シングルクォート
insert into people(id,name) values(3,'saburo');

insert into people values(6,"john's son",'2021-01-01');




