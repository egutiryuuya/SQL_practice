#exceptをexistでかく
select * from customers
union
select * from customers_2;

#c1に存在してc2に存在しないもの
select * from customers as c1
where not exists(
 select * from customers_2 as c2
 where 
   c1.id = c2.id and
   c1.first_name = c2.first_name and
   c1.last_name = c2.last_name and
   c1.phone_number = c2.phone_number and
   c1.age = c2.age
);

#intersect

select * from customers as c1
where exists(
 select * from customers_2 as c2
 where 
   c1.id = c2.id and
   c1.first_name = c2.first_name and
   c1.last_name = c2.last_name and
   c1.phone_number = c2.phone_number and
   c1.age = c2.age
);