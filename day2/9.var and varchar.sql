select database();
#students tableの作製
create table students(
id int primary key,
name char(10)
)

#charの場合は末尾スペース消える
insert into students values(1,"abcdef  ");

select * from students;

#char => varchar
alter table students modify name varchar(10);

insert into students values(2,"abcdef  ");
insert into students values(4,"abcdef    ");
select * from students;
#長さを調べる
select name,char_length(name) from students;