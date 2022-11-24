show tables;

describe people;

alter table people add age int after name;

insert into people values(1,"john", 18,"2001-01-01");
insert into people values(2,"alice", 15,"2003-01-01");
insert into people values(3,"oaul", 19,"2000-01-01");
insert into people values(4,"chris", 17,"2001-01-01");
insert into people values(5,"vette", 20,"2001-01-01");
insert into people values(6,"tuyoshi", 21,"2001-01-01");

select * from people; 

#並べ替え(ageで降順)
select * from people order by age desc;

#name
select * from people order by name ;

#２カラム
select * from people order by birth_day,name desc,age ;

#asc 降順
#desc 降順

#distinct
select distinct birth_day from people order by birth_day;

select distinct name ,birth_day from people;

#limitは最初の行だけ表示
select * from people limit 3;

#飛ばして表示(limitのあと　左が飛ばすレコード数　右が表示するレコード数)
select * from people limit 3, 2;
select * from people limit 4 offset 2;
