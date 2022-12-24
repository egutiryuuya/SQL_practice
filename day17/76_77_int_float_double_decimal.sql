#int float 

#decimal　固定小数点型（真数値）
#decimal(m,n); mは整数部と小数部を合わせた桁数（最大６５、デフォルト１０）、nは小数部の桁数（最大３０、デフォルト０）

#int
create table patients(
 id smallint unsigned primary key auto_increment,#0~65535 
 name varchar(50),
 age Tinyint unsigned default 0 #0~255
 );

drop table patients;

insert into patients(name,age) values("Sachiko",34);
insert into patients(name,age) values("Sachiko",345);
select * from patients;

insert into patients(id,name) values(65535,"Yoshio");

alter table patients modify id mediumint unsigned auto_increment;#0~16777215

show full columns from patients;

#height,weightカラムの追加

alter table patients add column(height float);
alter table patients add column(weight float);
select * from patients;

insert into patients(name,age,height,weight) values("Taro",44,175.6789,67.8934)

create table tmp_dloat(
 num float);

insert into tmp_dloat values(1234544);
select * from tmp_dloat;

create table tmp_double(
 num double);

insert into tmp_double values(545454341234567);

select * from tmp_double;

#decimal
alter table patients add column score decimal(7,3); #整数部４,小数部３

select * from patients;
insert into patients(name,age,score) values("Jiro",54,32.456);

create table tmp_decimal(
 num_float float,
 num_double double,
 num_decimal decimal(20,10)
 );
select * from tmp_decimal; 
insert into tmp_decimal values(1111111111.1111111111,1111111111.1111111111,1111111111.1111111111);

select num_decimal,num_decimal*2 from tmp_decimal;

#boolean

create table managers(
 id int primary key auto_increment,
 name varchar(50),
 is_superuser boolean
 );

insert into managers(name,is_superuser) values("Jiro",true);
insert into managers(name,is_superuser) values("iro",false);
select * from managers ;
select * from managers where is_superuser = true; 




