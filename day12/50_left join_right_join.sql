#複数のテーブルを結合して、左のテーブルはすべてのれーこーどを取得して、右のテーブルからは紐づけのできたレコードのみを取り出しそれ以外はNULL（left outer join)right joinは逆

#left join
use day_10_14_db;

select employ.id,employ.first_name,employ.last_name,coalesce(depart.id,"該当なし") as department_id,depart.name as department_name 
from employees as employ
left join departments as depart
on employ.department_id = depart.id;

select * from students as std
left join enrollments as enr
on std.id = enr.student_id
left join
classes as cs 
on enr.class_id = cs.id;

#right join

select * from students as std
right join enrollments as enr
on std.id = enr.student_id
right join
classes as cs 
on enr.class_id = cs.id;

#full join(両方から取り出して、取得できないものはNULL)
select * from students as std
left join enrollments as enr
on std.id = enr.student_id
left join
classes as cs 
on enr.class_id = cs.id
union 
select * from students as std
right join enrollments as enr
on std.id = enr.student_id
right join
classes as cs 
on enr.class_id = cs.id;

