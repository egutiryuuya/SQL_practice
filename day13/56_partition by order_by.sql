#partition byとorder byを併用する
#partition byで分割してパーティション化する対象を決め、order byで行を並び替えて集計する

select *,
count(*) over(partition by department_id order by age) as "部署ごと人数" 
from employees;

#人ごとの最大の収入
select *, max(payment) over(partition by emp.id)
from employees as emp
inner join salaries as sa
on emp.id = sa.employee_id;

#月ごとの合計をemployeesのIDで
select *, sum(sa.payment) over(partition by sa.paid_date order by emp.id)
from employees as emp
inner join salaries as sa
on emp.id = sa.employee_id;


 
 
