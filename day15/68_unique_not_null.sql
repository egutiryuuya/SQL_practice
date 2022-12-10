show databases;

create database day_15_18_db;

use day_15_18_db;

show tables;

create table users(
 id int primary key,
 first_name varchar(255),
 last_name varchar(255)default "" not null);

insert into users (id) values(1);

select * from users;


create table users_2(
id int primary key,
first_name varchar(255),
last_name varchar(255) not null,
age int default 0 );

insert into users_2(id,first_name,last_name) values(1,"Taro","Yamada");
select * from users_2;

insert into users_2 values(2,"Jiro","Suzuki",NULL);

#unique
create table login_users(
id int primary key,
name varchar(255)not null,
email varchar(255) not null unique
);

insert into login_users values(1,"Shino","abc@gmail.com")
insert into login_users values(2,"Shino","abc@gmail.com")

create table tmp_names(
  name varchar(255) unique);
 
 insert into tmp_names values(null);


