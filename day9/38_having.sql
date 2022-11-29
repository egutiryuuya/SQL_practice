#having
select department,avg(salary) from employees 
group by department 
having avg(salary) > 398000;

#havingは集計したものへのwhere
select birth_place,age,count(*) from users
group by birth_place,age
having count(*) > 2
order by count(*);
select * from users;

