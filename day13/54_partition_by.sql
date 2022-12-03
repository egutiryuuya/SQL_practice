#ウィンドウ関数
#一部の行に対して、集計した結果を表示するSQL。データ分析をする際によく用いられる

/*window関数 over(
	[partition by 対象] #集計対象のカラムを指定
	[order by 対象 [asc|desc]] #順番を並び替える
	[range | row　集計範囲] #集計範囲を絞る
)*/

#parttition by
#行を分割してグループ化し、各グループに対してwindow関数を適用する(オプション機能)
sum(給料) over (partition by 部署) #部署カラムの値ごとにグループ化する

use day_10_14_db;

show tables;

#window関数
select *,avg(age) over(),count(*) over()
from employees;

#partition by 分割してその中で集計する
select *,avg(age) over(partition by department_id)as "平均年齢",count(*) over(partition by department_id) as "部署ごと人数"
from employees;

select distinct concat(count(*) over(partition by floor(age/10)),"人") as age_count,floor(age/10)
from employees;

select *,sum(order_amount*order_price) over(partition by date_format(order_date,"%Y/%M"))
from orders;