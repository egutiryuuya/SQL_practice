# round floor ceiling

select round(13.14,-1); #四捨五入
select floor(3.99) #切り捨て

select ceiling(3.00001) #切り上げ

select rand(); 
select floor(rand()*10)

#power
select power(99,99);

#coalesce一番最初のNULLじゃないもの
select * from tests_score;

select coalesce(null,null,null,"A",null);

select coalesce (test_score_1,test_score_2,test_score_3) as score,test_score_1,test_score_2,test_score_3 from tests_score;