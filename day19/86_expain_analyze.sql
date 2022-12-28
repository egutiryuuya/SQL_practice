show databases;

create database day_19_21_db;

use day_19_21_db;

#統計情報の確認
select*from mysql.innodb_index_stats where database_name="day_19_21_db";

select * from prefectures;

insert into prefectures value("48","不明");

delete from prefectures where prefecture_code ="48"and name ="不明";
#統計情報の自動更新
analyze table prefectures;

#200件

#SQLを実行して、実行計画だけ表示し
explain analyze select * from customers;

select * from customers;














