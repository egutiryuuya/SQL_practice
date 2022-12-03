#フレームの範囲を変更
#rows between → 現在の行を基準として、集計する対象の行を(フレーム)を変更する

#集計する対象の行を、直前の行と現在の行にする
 sum(数量) over(rows
 between 1 preceding and
 current row)
 
#rowsで指定する式の一覧
 # unbounded preceding 一番頭の行
 # n preceding 現在の行よりn行前の行
 # current row 現在の行
 # n following 現在の行よりn行後の行
 # unbounded following 一番最後の行
 
 
 #range BETWEEN 
 #現在の行の値を基準として、集計する対象の行(フレーム)を変更する(order by と一緒に使う)

 #salesテーブルのorder_price*order_amountの合計値の七日間の平均を求める
 #日付ごとの合計値を求める
 #7日平均を求める
 
 select *,
 sum(order_price* order_amount) 
 over(order by order_date rows between 6 preceding and current row) from orders;
 

with daily_summary as(
select
		order_date,sum(order_price * order_amount) as sale
	from
		orders
	group by order_date
)
select 
  *,
  avg(sale) over(order by order_date range between unbounded preceding and unbounded following) as p_summary #6日前から現在の行まで
from
  daily_summary;
 
 select
 *,
 sum(summary_salary.payment)
 over(order by age) as p_summary
 from employees as emp
 inner join
 (select 
   employee_id,
   sum(payment) as payment
 from salaries
   group by employee_id) as summary_salary
 on emp.id = summary_salary.employee_id;

select *,sum(summary_salary.payment) 
over(order by age range between unbounded preceding and unbounded following) as p_summary
from employees as emp
inner join
(select employee_id,
		sum(payment) as payment
	from salaries
		group by employee_id) as summary_salary
	on emp.id = summary_salary.employee_id;


















