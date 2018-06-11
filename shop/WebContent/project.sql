create table member(
	member_no int(11) auto_increment PRIMARY KEY,
    member_name VARCHAR(20) NOT NULL
);

drop table member;

insert into member (member_name) values ('test');

select * from member;