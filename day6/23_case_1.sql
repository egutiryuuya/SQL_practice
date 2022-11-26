 show databases;
 use day_4_9_db
 
 select *,
 	case birth_place
 	when "日本"then "日本人"
 	when "Iraq" then "イラク人"
 	else "外国人"
 	end as "国籍"
 from users
 where id > 30;
 
select * from prefectures ;
select
	name ,
	case 
	  when name in("香川県","愛媛県","徳島県","高知県") then "四国"
	  when name in("兵庫県","大阪府","京都府","滋賀県","奈良県","三重県","和歌山県")　then "近畿"
	  else "その他"
	 end as "地域名"
from 
 prefectures;

select name birth_day,
  case
	 when date_format(birth_day,"%Y") % 4 = 0 then "うるう年"
	 else "うるう年ではない"
　 end as "うるう年かどうか"
　from users;

select * ,
case
	when student_id % 3 = 0 then test_score_1
	when student_id % 3 = 0 then test_score_2
	when student_id % 3 = 0 then test_score_3
end as score
	from tests_score;
 	from users;
	end
	
describe tests_score;