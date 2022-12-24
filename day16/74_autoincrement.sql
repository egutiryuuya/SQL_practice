#Auto_increment
use day_10_14_db;
create table animals(
 id int primary key auto_increment COMMENT '主キーのID（INT型）です',
 name varchar(50) not null COMMENT '動物の名前です'
);

#commentの確認
show full columns from animals;

insert into animals values(null,"Dog");

select * from animals;

insert into animals(name) values("Cat");

select auto_increment from information_schema.tables where table_name = 'animals';

insert into animals values(4,"Panda");

insert into animals values(null,"Fish");

alter table animals auto_increment = 100;

insert into animals values(null,"Bird");
select * from animals; 

insert into animals(name)
select "Snake"
union all
select "Dino"
union all
select "Gibra";

insert into animals(name)
select name From animals;

select * from animals;

