show tables;
#zenkaramu
select * from people;

#karamuitibu
select id from people;

#asで名前変更
select id as "番号",name as "名前" from people;

#where句
select * from people where name = "jiro" ;

#update(set)
update people set birth_day = "1900-01-01",name = "";
select * from people;

#update(where)
update people set name = "taro",birth_day = "2000-01-01" where id = 3;
update people set name = "jiro",birth_day = "2000-01-01" where id > 4;

#delete(from)
delete from people where id > 4;
delete from people;
