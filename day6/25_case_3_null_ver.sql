#nullを使う場合
use day_4_9_db;
select *,
	case
		when name is null then "不明"
		when name is not null then "null以外"
		else ""
		end as "null check"
from customers ;