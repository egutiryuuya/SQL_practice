#算術演算子

#+ - * / %

select 1 + 1;
select name,age,age+3 as age_3 from users limit 10;
select 10 - 5;
select age -1 as age_1 from users;
select birth_day,birth_day + 2 from users;
select 3 * 5; 
select * from employees;

select department,name,salary,salary * 1.1 as salary_next_year from employees; #saralyに1.1倍したものをsalary_next_yearとして表示
select department,name,salary,salary * 0.9 as salary_next_year from employees; #saralyに0.9倍したものをsalary_next_yearとして表示

select 10/3;
select age % 12 from users;

#concat(文字列結合),||2本でも可能
select concat (department,": ",name) as "部署:名前" from employees;
select concat (name,"(",age,")") as "名前(年齢)"from users;

#now,curdate(今日の日付),date_format
select now(); #現在時刻
select now(),name ,age from users;

select curdate(); #current date
select date_format(now(),"%y/%m/%d/%h/%m/%s");