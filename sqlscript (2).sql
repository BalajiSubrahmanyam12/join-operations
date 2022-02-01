REM   Script: lab - 7
REM   Join Operation

create table product_10(product_id number, product_name varchar2(20), supplier_name varchar2(20), unit_price number);

insert into product_10 values(100,'Camera','Nikon',300);

insert into product_10 values(101,'Television','Onida',100);

insert into product_10 values(102,'Refrigerator','Videocon',150);

insert into product_10 values(103,'Ipod','Apple',75);

insert into product_10 values(104,'Mobile','Nokia',50);

desc product_10


select * from product_10;

create table order_10(order_id number, product_id number, total_units number, customer varchar2(20));

insert into order_10 values(5100,104,30,'Infosys');

insert into order_10 values(5101,102,5,'Satyam');

insert into order_10 values(5102,103,25,'Wipro');

insert into order_10 values(5103,101,10,'TCS');

desc order_10


select * from order_10;

SELECT o.order_id, p.product_name, p.unit_price, p.supplier_name, o.total_units FROM product_10 p, order_10 o WHERE o.product_id = p.product_id;

SELECT p.product_id, p.product_name, o.order_id, o.total_units FROM order_10 o, product_10 p WHERE o.product_id (+) = p.product_id;

SELECT product_id, product_name, supplier_name FROM product_10 WHERE product_name != 'Refrigerator';

SELECT order_id, product_id, customer FROM order_10 WHERE order_id != '5100';

select product_name, product_id from product_10 where product_id > '102';

select product_name, product_id from product_10 where product_id < '102';

select product_name, product_id from product_10 where product_id = '102';

select p.product_id,p.product_name,o.customer from product_10 p, order_10 o where p.product_id != o.product_id;

select p.product_id, o.product_id from product_10 p, order_10 o where p.product_id != o.product_id;

create table student(ROLL_NO number, NAME varchar2(20), ADDRESS varchar2(20), AGE number);

insert into student values(1,'Balaji','ANDHRA',19);

insert into student values(2,'Subrahmanyam','ANDHRA',18);

insert into student values(3,'phanindhar','Hyderabad',20);

insert into student values(4,'dinesh','chennai',19);

insert into student values(5,'sidharth','hyderabad',19);

create table course_10(COURSE_ID number, ROLL_NO number);

insert into course_10 values(1,1);

insert into course_10 values(2,2);

insert into course_10 values(2,3);

insert into course_10 values(3,3);

insert into course_10 values(3,4);

insert into course_10 values(1,5);

SELECT course_10.COURSE_ID, student.NAME, student.AGE FROM student  
INNER JOIN course_10  
ON student.ROLL_NO = course_10.ROLL_NO;

SELECT course_10.COURSE_ID, student.NAME, student.AGE FROM student  
INNER JOIN course_10  
ON student.ROLL_NO = course_10.ROLL_NO;

SELECT student.NAME,course_10.COURSE_ID   
FROM student  
LEFT JOIN course_10   
ON course_10.ROLL_NO = student.ROLL_NO;

SELECT student.NAME,course_10.COURSE_ID   
FROM student  
RIGHT JOIN course_10   
ON course_10.ROLL_NO = student.ROLL_NO;

