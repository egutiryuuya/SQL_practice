#パーティション → partition byによって、分割される行の塊のこと
#フレーム → パーティションの中で集計の対象とするさらに小さな集合

#order by
#指定した行で昇順か降順に順番を並び替えて、(デフォルトでは)パーティションの始めから現在の業と同じ値の行までをフレームとして集計する
#sum(給料) over(order by 年齢) 年齢カラムの値毎に並び替えて集計する

#order_by
select *,
count(*) over (order by age) as tmp_count
from
employees;

select *,sum(order_price) over(order by order_date,customer_id) from orders;

select 
floor(age/10),
count(*) over(order by floor(age/10))
from employees;
