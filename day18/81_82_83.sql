use day_10_14_db;

show tables;

#viewをさくせい
create view stores_items_view as
select st.name as store_name,it.name as item_name from stores as st 
inner join items as it 
on it.store_id = st.id;

select * from stores_items_view;


#tableとviewの一覧
show tables;

select * from information_schema.views where table_schema = "day_10_14_db";

#view詳細
show create view stores_items_view;


#絞り込み
select* from stores_items_view where store_name = "山田商店";

select * from stores_items_view order by store_name;

#viewをさくじょ

drop view stores_items_view;

#viewを更新
alter view stores_items_view as
select st.id as store_id,it.id as item_id, item_name as stfrom stores as st 
inner join items as it 
on it.store_id = st.id;

select * from stores_items_view;

#viewの名前変更
rename table stores_items_view to new_stores_items_view;

show tables;

















