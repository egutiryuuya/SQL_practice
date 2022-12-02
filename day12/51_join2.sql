#customers,orders,items,storesひもづけ
#customers.idで並び変える(order by)
select 
 customer.id,customer.last_name,order.item_id,order.order_amount
from
customers as customer
inner join orders as order
on customer.id = order.customer_id
inner join items as item
on order.item_id = item.id
inner join stores as store
on item.store_id = store.id
order by customer.id;

#customers,orders,items,storesひもづけ
#customers.idで並び変える(order by)
#customers.idが10で、orders.order_dateが2020-08-01よりあtに絞り込む
select 
 customer.id,customer.last_name,o.item_id,o.order_amount
from
customers as customer
inner join orders as o
on customer.id = o.customer_id
inner join items as item
on order.item_id = item.id
inner join stores as store
on item.store_id = store.id
where customer.id = 10 and o.order_date > "2020-08-01"
order by customer.id;

#group buの紐づけ
select * from customers as ct
inner join 
 (select customer_id,sum(order_amount* order_price) as summary_price
  from orders
  group by customer_id)as order_summary
 on ct.id =order_summary.customer_id
order by ct.age
limit 5;

