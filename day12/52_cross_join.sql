#self join(じこけつごう)

select
  concat(emp1.last_name,emp1.first_name) as "部下の名前",
  emp1.age as "部下の年齢",
  coalesce(concat(emp2.last_name,emp2.first_name),"該当なし") as "上司の名前",
  emp2.age as "上司の年齢"
  from employees as emp1
left join employees as emp2
on emp1.manager_id = emp2.id;

#交差結合
#select(カラム)from テーブル1as別名1
#cross join テーブル2as 別名2
#(on)結合条件

#cross join
select * from employees as emp1 cross join employees as emp2
on emp1.id < emp2.id;

#計算結果とCASEで紐づけ
select 
*,
case 
	when cs.age > summary_customers.avg_age then "O"
	else "X"
end as "平均年齢よりも高いか"
from customers as cs
cross join(
select avg(age) as avg_age from customers
) as smmary_customers;

select 
emp.id,avg(payment),
summary.avg_payment,
case 
	when avg(payment) >= summary.avg_payment then "O"
	else "X"
end as "平均月収以上か"
from employees as emp
inner join salaries as sa
on emp.id = sa.employee_id
cross join
(select avg(payment) as avg_payment from salaries) as summary
group by emp.id;


