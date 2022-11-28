show databases;

use day_4_9_db;
show tables;
select * from users;

#トランザクションの開始
start transaction;

#update処理
update users set name = "中山 成美" where id = 1;

select * from users;

#rollback(トランザクション開始前にももどす)
rollback;

#commit(トランザクションをDBに反映)
commit;

select * from students;

#id300を削除
delete from students where id = 300;

#autocommit 確認
show variables where variable_name = "autocommit";
set AUTOCOMMIT = 0;

delete from students where id = 299;

commit;

#autocommit を元に戻す
set autocommit = 1;