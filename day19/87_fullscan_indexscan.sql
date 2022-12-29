ExPLAIN AnALYZE SELECT * FROM customers;

select * from customers where first_name = "Olivia";

create index idx_customers_first_name on customers(first_name);

explain analyze select * from customers where gender = "F";


create index idx_customers_gender on customers(gender);