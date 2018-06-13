create table member(
	memberNo int auto_increment PRIMARY KEY,
    memberId VARCHAR(50) NOT NULL,
    memberPwd VARCHAR(50) NOT NULL,
    memberName VARCHAR(20) NOT NULL,
    memberAge int NOT NULL,
    memberGender boolean NOT NULL,
    memberPhone VARCHAR(30) NOT NULL,
    memberAdress VARCHAR(200) NOT NULL
);

drop table member;

insert into member (member_name) values ('test');

insert into member (member_name) values ('test2');

insert into member values(1,'asdf','1234','john','20',true,'01012345678','seoul jongnogu');
update member set memberId = 'asdf';

select * from member;
yongjun0118