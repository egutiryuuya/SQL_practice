#withをつかったUPDATE
select*from stores;

alter table stores
add all_sales int;

selct * from items;

select * from orders;


with tmp_sales as(
select it.store_id,sum(od.order_amount* od.order_price) 
from items as it
inner join orders as od 
on it.id = od.item_id
group by it.store_id
)
update stores as st
inner join tmp_sales as ts
on st.id = ts.store_id
set st.all_sales = ts.summary;

#delete
delete from employees
where department_id in(
select id from departments where name = "開発部");
