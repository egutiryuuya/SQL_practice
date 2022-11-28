use day_4_9_db;

start transaction;
show tables;

select * from customers;
#主キーでupdate(行ロック)
update customers set age = 43 where id = 1;
rollback;

start transaction;
update customers set age = 42 where name = "河野文典"

#delete 
start transaction;
#行ロック
delete from customers where id = 1;
commit;

#insert 
start transaction ;
insert into customers values(2300,"田中太郎",21,"2000-08-24");
select *from customers;

#select のロック
#for shere(共有ロック)
#for update(排他ロック)
start transaction;
select*from customers where id = 1 for share;
rollback;

start transaction;
select * from customers where id =1 for update;