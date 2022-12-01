use day_10_14_db;

select * from departments;

select * from employees;

#exists

select * from employees as em
where exists(
	select * from departments as dt where em.department_id = dt.id
	);

#in existsはinで代用可能
select * from employees as em
where em.department_id in (select id from employees);


select * from departments;
select * from employees;
select * from employees as em
where exists(
select * from departments as dt where dt.name in ("営業部","開発部") and em.department_id = dt.id
);