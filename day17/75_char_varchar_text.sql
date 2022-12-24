use day_15_18_db;

#charは固定長varcharは可変長
#charがたはauto_incrementが使えない
create table messages(
name_code char(8),
name varchar(25),
message text #65535文字まで
);

insert into messages values("00000001","Yoshida Takeshi","aaaaba");
insert into messages values("00000002","Yoshida Takesh","hello world");
