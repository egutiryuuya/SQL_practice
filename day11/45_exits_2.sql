use day_10_14_db;

select * from customers as ct
where not exists(select * from orders as od where ct.id = od.customer_id and od.order_date = "2020-12-31");

select * from employees as em1
where exists(select 2 from employees as em2 where em1.manager_id = em2.id);


