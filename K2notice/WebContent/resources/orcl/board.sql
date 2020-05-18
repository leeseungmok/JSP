CREATE TABLE board (
	num number not null, 
	name varchar2(10) not null, 
	subject varchar2(100) not null, 
	content varchar2(20) not null, 
	regist_day date, 
	hit number
)
select * from board;
drop table board;