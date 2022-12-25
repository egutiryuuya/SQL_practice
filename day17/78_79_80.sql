#date time
create table alerms(
id int primary key auto_increment,
alarm_day DATE,
alarm_time time,
crete_at timestamp default current_timestamp,
update_at timestamp default current_timestamp on update current_timestamp
);

insert into alerms(alarm_day,alarm_time) values("2019-01-01","19:50:21");
insert into alerms(alarm_day,alarm_time) values("2021-01-15","195031");
select * from alerms;
update alerms set alarm_time = current_timestamp where id = 1;

select minute(alarm_time),alarm_time from alerms;

create table tmp_time(
 num time(5)
 );
 
insert into tmp_time values("21:05:21.54321");

select * from tmp_time;

#datetime,timestamp
create table tmp_datetime_timestamp(
val_datetime datetime,
val_timestamp timestamp,
val_datetime_3 datetime(3),
val_timestamp_3 timestamp(3));

insert into tmp_datetime_timestamp values(current_timestamp,current_timestamp,current_timestamp,current_timestamp);

select * from tmp_datetime_timestamp;

#古い日付、新しい日付はtimestampには入れられない
show tables;

select * from students;

show index from students;

select * from students where last_name = "Taro";

create index idx_students_name on students(last_name);
explain select * from students where last_name = "Taro";

select * from students where lower(last_name) = "taro";

#関数INDEX

show tables;

create unique index idx_users_uniq_first_name on users(first_name);

insert into users values(id,first_nam) values(3 "ABC");






















