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
