select * from customers where name is null;
select * from customers where name in ("河野 文典","稲田 季雄") or name is null;

#not in 
select * from customers where name not in ("河野 文典","稲田 季雄",null);

select * from customers where name not in ("河野 文典","稲田 季雄")and name is not null;

#not in > name != 河野 文典 name !=稲田 季雄 name != null


#all
select * from users where birth_day <= all(select birth_day from customers where id < 10 and birth_day is not null)

#all inの場合はnullに気を付ける
