show tables;

select * from employees;

#部署一覧
 select * from departments ;
 select * from employees; 
#inで絞り込む
select * from employees where department_id in (select id from departments where name in ("経営企画部","営業部"));

#副問い合わせ
select * from departments where name in ("経営企画部","営業部");

select * from students;
select * from users;


#複数カラムのIN
select * from students
where(first_name,last_name) in( 
select first_name,last_name from users
);

"服問い合わせ3:集計と使う"
select max(age) from employees;

select * from employees where age = (select max(age) from employees);

#服問い合わせ4 Fromで用いる
select * from employees;
select 
max(avg_age) as "部署ごとの平均年齢の最大"
from
(select department_id,avg(age) as avg_age from employees group by department_id) as tmp_emp;

select * from employees 
group by floor(age/10);

#服問い合わせ select の中に書く
select * from customers;

select * from orders;

select 
cs.first_name,
cs.last_name
(select max(order_date) from orders as order_max where cs.id = order_max.cudtomer_id
from customers as cs
where
cs.id < 10;

select * from orders;

select order_amount * order_price from orders;

#服問い合わせ
select
  emp.*,
  case 
  	when emp.department_id = (select id from departments where name = "経営企画部")
  	then "経営層"
  	else "その他"
  	end as "役割"
from
employees as emp ;



select 
 emp.*,
 case 
 	when emp.id in(
    select distinct employee_id from salaries where payment > (select avg(payment) from salaries)
    )then "O"
    else "X"
    end as "給料が平均より高いか"
from 
employees as emp;
























