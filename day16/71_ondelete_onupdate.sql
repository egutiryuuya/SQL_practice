describe students;

drop table students;
describe schools;
create table schools(
id int primary key,
name varchar(255)
);
insert into schools values(1,"湘北高校");


create table students(
  id int primary key,
  name varchar(255),
  age int ,
  school_id int,
  foreign key(school_id) references schools(id)
 #値が自動で削除されたり、更新されたりする
  on delete set null on update set null 
  );
 
 insert into students values(1,"Taro",18,1);

select * from students;
  
select * from schools;
update schools set id = 3 where id =3;

delete from schools;

insert into schools values(2,"ss高校");
insert into students values(1,"ss",16,1);
select * from students;
update schools set id= 3 where id = 1;

update students set school_id =3 where school_id is null;

select * from schools;

drop table students;
create table students(
  id int primary key,
  name varchar(255),
  age int ,
  school_id int default -1,
  foreign key(school_id) references schools(id)
 #
  on delete set default on update set default 
  );
 
 selet * from schools;
insert into schools values(1,"ｓｓ");

insert into students values(1,"dd",17,1);

select * from students;

update schools set id = 3 where id = 1;
