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
);


drop table member;

insert into member (member_name) values ('test');

insert into member (member_name) values ('test2');

insert into member values(1,'asdf','1234','john','20',true,'01012345678','seoul jongnogu');
update member set memberId = 'asdf';

select * from member;



create table product(
	productNo int auto_increment PRIMARY KEY,
	productName VARCHAR(200) NOT NULL,
	productDetail text ,
	productImage VARCHAR(200),
	productType VARCHAR(50), 
	productPrice int,
	productOpt1 int,
	productOpt2 int
);


drop table product;
select * from product;

insert into product (productName, productImage, productPrice) values ('test1' , 'dice1.jpg' ,10000);
insert into product (productName, productImage, productPrice) values ('test2' , 'dice2.jpg' ,20000);
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