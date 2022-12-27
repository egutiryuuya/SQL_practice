use day_10_14_db;

show tables;

#バインド変数
set @customer_id = 5;
select * from customers where id = @customer_id;

