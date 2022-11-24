select database();

describe customers;

select * from customers where name is null;

select null = null ;
select null is null ;
#is null 出ないと取り出せないイコールいらない
select * from customers where name is not null;

select * from prefectures where name is null;

#空白を取り出す
select * from prefectures where name = '';


#between not 5,10含む
select * from users where age not between 5 and 10;

#like not like
select * from users where name like "村%"; #前方一致
select * from users where name like "%郎";　#後方一致
select * from users where name like "%郎%";　#後方一致
select * from prefectures where name like "福_県" order by name; #_は任意の一文字

