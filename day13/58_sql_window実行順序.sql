#ウィンドウ関数一覧
# row_number パーティション内での行番号(重複はカウントアップする)
# rank パーティション内で重複する値は同じ値にして、重複分カウントアップしてランキング表示する
# dense_rank パーティション内で重複する値は同じ値にして、1だけカウントアップしてランキング表示する
# percent_rank order byと使う。現在の行のランクが、全体の何%に当たるk(rank -1)/(全行数 -1)
# cume_dist order byと使う。現在の行の値以下の行の数が、全体の何%に当たるか
# lag(expr,offset,default) 現在の行の、前の行の値を取得する。expr(取り出す対象の行・式)、offset(何行前の値を取り出すか)、default(値を取り出せなかった場合の値)
# lead(expr,offset,default) 現在の行の、後の行の値を取得する。expr(取り出す対象の行・式)、offset(何行後の値を取り出すか)、default(値を取り出せなかった場合の値)
# first_value 並び替えたパーティション内の対象フレームの一番最初の行の値を取り出す
# last_value 並び替えたパーティション内の対象フレームの一番最後の行の値を取り出す
#n tile(n) 対象の分布が、最小から数えて何番目に当たるのかを表示する。nで分布を幾つの数に分けるのかを設定する
#SQLの実行順序

#1 from join
#2 where
#3 group by
#4 集計関数
#5 having(しゅうけいけっかにたいしてしぼりこむ)
#6 ウィンドウ関数(where ,havingの中で使えないセレクトの中のみ)
#7 select
#8 distinct
#9 union/intersect/exept連結
#10 order by並べ替え
#11 offset飛ばす
#12 limit上から何行目か




#row_number,rank,dense,rank

select
*,
row_number() over(order by age) as row_num
rank() over(order by age) as row_rank
dense_rank() over(order by age) as row_dense
from employees;

#cume_dist,percent_rank
select
*,
row_number() over(order by age) as row_num,
percent_rank() over(order by age) as p_age, #(rank -1)/(行数-1)
cume_dist() over(order by age) as c_age #現在の行の値より小さい行の割合
from employees;

#lag,lead

select 
age,
lag(age) over(order by age),#直前
lag(age,3,0) over(order by age),#３つまえない場合は0
lead(age) over(order by age)#直後
lead(age,2,0) over(order by age)#2津跡、ない場合は0
from customers;

#first_value,last_value
select 
*,
first_value(first_name) over(partition by department_id order by age),
last_value(first_name) over(partition by department_id order by age range between unbounded preceding and unbounded following)
from employees;

#ntile
select * from
(select 
age,
ntile(10) over(order by age) as n
from 
employees) as tmp
where
tmp.ntile_value=8
;

