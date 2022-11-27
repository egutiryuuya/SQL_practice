show databases;
use day_4_9_db;

#1. customersテーブルから、ageが28以上40以下でなおかつ、nameの末尾が「子」の人だけに絞り込んでください。
select * from customers where age >=28 and age <= 40 and name like "%子";

そして、年齢で降順に並び替え、検索して先頭の5件の人のnameとageだけを表示してください。
select name,age from customers where age >=28 and age <= 40 and name like "%子"
order by age desc limit 5;


2. receiptsテーブルに、「customer_idが100」「 store_nameがStore X」「priceが10000」のレコードを挿入してください。
describe receipts;
select id from receipts order by id desc;
#inser into テーブル名　values(値1,値2...);
insert into receipts values(301,100,"Store_X",10000);


3. 2で挿入してレコードを削除してください
delete from receipts order by id desc limit 1;



4. prefecturesテーブルから、nameが「空白もしくはNULL」のレコードを削除してください
delete from prefectures where name is null or name = "";



5. customersテーブルのidが20以上50以下の人に対して、年齢を+1してレコードを更新してください
describe customers;

update customers set age = age+1 where id between 20 and 50 ;

(ただし、BETWEENを使うこと)



6. studentsテーブルのclass_noが6の人すべてに対して、1～5のランダムな値でclass_noを更新してください
select * from students;
update students set class_no = floor(rand()*10/2)+1 where class_no = 6;



7. class_noが3または4の人をstudentsテーブルから取り出します。取り出した人のheightに10を加算して、その加算した全値よりも、heightの値が小さくてclass_noが1の人をstudentsテーブルから取り出してください。
select * from students 
where class_no = 1 and height < all(select height from students 
where class_no in(3,4) and height = height + 10);
(ただし、IN, ALLを使うこと)
select * from students 
where class_no = 1 
and height < all(select height+10 
from students 
where class_no in(3,4));

select * from students
where height < all(select height+10 from students where class_no in(3,4))
and class_no = 1;



8. employeesテーブルのdepartmentカラムには、「 営業部 」のような形で部署名の前後に空白が入っています。この空白を除いた形にテーブルを更新してください
select * from employees;
update employees set department = trim(department);

select char_length(department) as name_length 
from employees 
where char_length(department) <> char_length(trim(department));



9. employeesテーブルからsalaryが5000000以上の人のsalaryは0.9倍して、5000000未満の人のsalaryは1.1倍して下さい。
select * ,
	case
		when salary >= 5000000 then round(salary*0.9)
		else round(salary*1.1)
	end as salary
	from employees ;
	

(ただし、小数点以下は四捨五入します)



10. customersテーブルにnameが「名無権兵衛」、ageが0、birth_dayが本日日付の人を挿入してください。
select * from customers order by id desc;
insert into customers values(101,"名無権兵衛",0, now());

（ただし、日付関数を使うこと）



11. customersテーブルに新たなカラムとして、「name_length INT」を作成します。

name_lengthカラムをcustomersテーブルの各行の名前の文字数でアップデートしてください
describe customers;
select * from customers;
alter table customers add name_length int;

update customers set name_length = char_length(name)-1; 





12. tests_scoreテーブルに新たなカラムとして、「score INT」を作成します。
describe tests_score;
alter table tests_score add score int ;

scoreカラムに、testsテーブルの各行のtest_score_1, test_score_2, test_score_3から、取り出したNULLでない最初の値で更新します。
update tests set score = coalesce(test_score_1,test_score_2,test_score3)
ただし取り出したtestscore〇が、900以上の人は1.2倍して小数点以下を切り捨てて、600以下の人は0.8倍して小数点以下を切り上げてください。


    





13. employeesテーブルを、 departmentが、マーケティング部 、研究部、開発部、総務部、営業部、経理部の順になるように並び替えて表示してください。
describe employees;
select * 
from employees 
order by
	case department
		when "マーケティング部" then 0
		when "研究部" then 1
		when "開発部" then 2
		when "総務部" then 3
		when "営業部" then 4
	    when "経理部" then 5
    end;

select *
from employees
order by
    case department
        when "マーケティング部" then 0
        when "研究部" then 1
        when "開発部" then 2
        when "総務部" then 3
        when "営業部" then 4
        when "経理部" then 5
    end;


