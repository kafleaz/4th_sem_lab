-- create table using sql DDL statement
-- creating a table

create table students_info
(
s_id char(6),
smane varchar2(30),
course_fee number(8),
enrollment_date date
);

create table books
(
book_id number(8) constraint bid_pk primary key,
book_name varchar2(30) constraint bname_nn not null,
author_Name varchar2(30),
Book_cost number(5) constraint bcost_chk check(Book_cost>1000)
);

select table_name from tabs;
select * from books;
describe books;

create table customers
(
customer_id number(10),
customer_name varchar2(30) not null,
email_id varchar2(30),
issue_date date,
book_id number(8),
primary key (customer_id),
unique (email_id),
foreign key (book_id) references books (book_id)
);

create table emp 
as 
select first_name, last_name, salary
from employees
where salary>12000;

select * from emp;

drop table emp;

create table rep1
as
select first_name ||' '|| last_name as Name, salary wages, job_id title
from employees
where job_id like '%rep%';

drop table rep1;

-- add new field
alter table customers
add contact_number number(14);



-- rename field
alter table customers
rename column contact_number to mobile_no;

----alter column
--alter table customers
--rename column book_id to books_id;

--drop a field
alter table customers
drop column mobile_no;

--rename table
alter table customers
rename to clients;

describe clients;
select * from clients;

--inserting records
--  Method 1 (Explicit)
insert into clients (customer_name, customer_id, email_id)
values('Ram', 1, 'ram@gmail.com');

-- method 2 (Implicit)

insert into clients values(2,'Sita','sita@gmail.com',null,1);

