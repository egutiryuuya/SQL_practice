
select database();

#テーブル作成(syuki-tuki)
create table users(
id int primary key,
name varchar(10),
age int,
phone_number char(13),
message text
)

show tables;
#テーブルの定義確認
describe users;

#テーブルの削除
drop table users;

show tables;

