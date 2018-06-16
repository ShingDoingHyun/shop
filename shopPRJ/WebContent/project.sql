ALTER DATABASE project DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


create table member(
	memberNo int auto_increment PRIMARY KEY,
    memberId VARCHAR(50) NOT NULL,
    memberPwd VARCHAR(50) NOT NULL,
    memberName VARCHAR(20) NOT NULL,
    memberAge int NOT NULL,
    memberGender boolean NOT NULL,
    memberPhone VARCHAR(30) NOT NULL,
    memberAdress VARCHAR(200) NOT NULL,
    memberEmail VARCHAR(100) NOT NULL,
    CONSTRAINT memberEmail UNIQUE (memberEmail)
)default character set utf8 collate utf8_general_ci;


drop table member;

insert into member (member_name) values ('test');

insert into member (member_name) values ('test2');

insert into member (memberId, memberPwd, memberName, memberAge, memberGender, memberPhone,  memberAdress, memberEmail)
values('asdf','1234','john','20',true,'01012345678','서울 종로구', 'parksj3406@gmail.com');
update member set memberId = 'asdf';

select * from member;



create table project.product(
	productNo int auto_increment PRIMARY KEY,
	productName VARCHAR(200) NOT NULL,
	productDetail text ,
	productImage VARCHAR(200),
	productType VARCHAR(50), 
	productPrice int,
	productOpt1 int,
	productOpt2 int
)default character set utf8 collate utf8_general_ci;


drop table product;
select * from product;

insert into product (productName, productDetail, productImage, productPrice, productType)
values ('네이비 남성 솔리드 COOLHAN 한지 티셔츠' ,
'한지 소재를 사용한 베이직한 솔리드 반팔 칼라 티셔츠입니다. 친환경 소재를 사용하여 항균, 소취, 속건 기능성이 더해진 제품입니다. 스트레치가 좋아 활동하기 편하며 단색 디자인으로 활용도 높은 아이템입니다.' , 
'man_solid_' ,100000, 'men');
insert into product (productName, productDetail, productImage, productPrice, productType)
values ('18SS 화이트 스트라이프 반팔 칼라 티셔츠' ,
'빈폴멘의 스트라이프 반팔 칼라 티셔츠입니다. 부드럽고 유연한 코튼 100 소재의 반팔 칼라 티셔츠입니다. 베이직한 스트라이프 패턴을 활용한 디자인으로 어디에나 쉽게 코디할 수 있는 아이템입니다.' ,
'white_188SS_' ,108000, 'men');
insert into product (productName, productDetail, productImage, productPrice, productType)
values ('[LIME BEANPOLE] 애쉬 라임 그래픽 티셔츠' ,
'빈폴레이디스의 라임 그래픽 티셔츠입니다. 전면의 라임 빈폴 콜라보를 상징하는 다양한 프린팅이 포인트로 더해진 제품입니다. 코튼 소재의 라운드넥으로 어디에나 편하게 코디할 수 있으며 라임 빈폴 특유의 화사한 컬러 포인트로 멋스러운 아이템입니다.' ,
'ash_188SS_' ,99000, 'women');
insert into product (productName, productImage, productPrice) values ('test3' , 'dice3.jpg' ,1000);
insert into product (productName, productImage, productPrice) values ('test4' , 'dice4.jpg' ,200);
insert into product (productName, productImage, productPrice) values ('test5' , 'dice5.jpg' ,100000);
insert into product (productName, productImage, productPrice) values ('test6' , 'dice6.jpg' ,10000);
insert into product (productName, productImage, productPrice) values ('test7' , 'dice3.jpg' ,30000);
insert into product (productName, productImage, productPrice) values ('test8' , 'dice2.jpg' ,70000);
insert into product (productName, productImage, productPrice) values ('test9' , 'dice1.jpg' ,2000);
insert into product (productName, productImage, productPrice) values ('test10' , 'dice4.jpg' ,10000);
insert into product (productName, productImage, productPrice) values ('test11' , 'dice4.jpg' ,10000);
insert into product (productName, productImage, productPrice) values ('test12' , 'dice2.jpg' ,20000);
insert into product (productName, productImage, productPrice) values ('test13' , 'dice3.jpg' ,1000);
insert into product (productName, productImage, productPrice) values ('test14' , 'dice4.jpg' ,200);
insert into product (productName, productImage, productPrice) values ('test15' , 'dice2.jpg' ,100000);
insert into product (productName, productImage, productPrice) values ('test16' , 'dice4.jpg' ,10000);
insert into product (productName, productImage, productPrice) values ('test17' , 'dice6.jpg' ,30000);
insert into product (productName, productImage, productPrice) values ('test18' , 'dice2.jpg' ,70000);
insert into product (productName, productImage, productPrice) values ('test19' , 'dice1.jpg' ,2000);

SELECT count(*) From product;
SELECT * From product limit 4, 3;