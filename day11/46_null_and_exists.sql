#exists(nullの存在する場合)
select * from customers as c1
where exists 
(select * from customers_2 as c2 where c1.first_name = c2.first_name and c1.last_name = c2.last_name and
(c1.phone_number = c2.phone_number or (c1.phone_number is null and c2.phone_number is null) ));

select * from customers;

#existsはinでも併用可能
select * from customers as c1
where (first_name,last_name,phone_number) in
(select first_name,last_name,phone_number from customers_2);



#not exists
select * from customers as c1
where not exists
(select * from customers_2 as c2
where c1.first_name = c2.first_name and c1.last_name = c2.last_name and c1.phone_number = c2.phone_number);

#not in のばあい
select * from customers as c1
where (first_name,last_name,phone_number) not in
(select first_name,last_name,phone_number from customers_2);


