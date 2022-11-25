#文字列関数

# length,char_length
select length("abc");#length はバイト数　日本語は一文字３バイト
select length("あいう");

select name,length(name) from users;

select char_length("abc");#char_length は文字数
select char_length("あいう") as length;

# trim, ltrim, rtrim 空白削除
select ltrim(" abc ");
select rtrim(" abc ");
select trim(" abc ");

select name, char_length(name) as name_length 
from employees 
where char_length(name) <> char_length(trim(name));

#updateして空白を削除したものにする
update employees 
set name = trim(name)
where char_length(name) <> char_length(trim(name));

# replace 置換
select replace("i like lemon","lemon","apple");
select replace(name,"Mrs","Ms") from users where name like"Mrs%";
update users set name = replace(name,"Mrs","Ms") where name like"Mrs%";

#upper lower(大文字,小文字)
select upper("apple");
select lower("APPLE");

select name ,UPPER(name),lower(name) from users;

#substring 一部取り出し
select substring(name,2,3),name from employees;
select * from employees where substring(name,2,1) = "田";

#reverse:逆順
select reverse(name),name from employees;