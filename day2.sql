create database dml

USE DML
create table employeess
(
EID INT PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
EDESIGNATION VARCHAR(20) NOT NULL
)

insert into employeess values(2,'arun','manager')
select * from employeess

insert into employeess(EID,ENAME,EDESIGNATION) values(1,'oneplus','senior manager')

create table child
(
cid int primary key,
cname varchar(20) not null,
pno int foreign key references parent(pid) on delete cascade on update cascade
)
insert into child values(100,'c1',1)
insert into child values(101,'c2',2)
insert into child values(102,'c3',1)
insert into child values(103,'c4',3)
select * from child


create table batch2
(
id int not null,
name varchar(25) not null,
salary int not null
)
select *from  batch2

-
create table Voting
(
ID int Primary key,
Name varchar(25) UNIQUE NOT NULL,
dob datetime NOT NULL CHECK(dob <= CURRENT_TIMESTAMP),
age int NOT NULL CHECK(age >= 18),
designation varchar(25) DEFAULT 'self-employeed'
)

insert into Voting values(1,'John','2000-01-07 12:12:12',22,'IT Employee')
insert into Voting values(2,'Jancy','2022-01-07 12:12:12',22,'IT Employee')
insert into Voting values(3,'Peter','2001-01-07 12:12:12.567',22,'IT Employee')
insert into Voting(id,name,dob,age) values(4,'Paul','2001-01-07 12:12:12.567',22)

select * from Voting




create table dept
(
did int PRIMARY KEY,
dname varchar(20) NOT NULL
)

insert into dept values(1,'Admin')
insert into dept values(2,'Developer')
insert into dept values(3,'Designer')
insert into dept values(4,'Tester')

select * from dept
delete from dept where did=1
update dept set did=100 where did=1




create table emp
(
eid int PRIMARY KEY,
ename varchar(25) NOT NULL,
salary MONEY,
dno int FOREIGN KEY REFERENCES dept(did)
)

insert into emp values(100,'John',25000,1)
insert into emp values(101,'Jancy',25000,2)
insert into emp values(102,'Joanna',28000,1)
insert into emp values(103,'Jamie',35000,3)

select * from emp




create table parent
(
pid int primary key,
pname varchar(20) not null
)
insert into parent values(1,'p1')
insert into parent values(2,'p2')
insert into parent values(3,'p3')
create table child
(
cid int primary key,
cname varchar(20) not null,
pno int default 1 foreign key references parent(pid) on delete set default on update set default
)
insert into child values(100,'c1',1)

update parent set pid=20 where pid=2
select * from parent
select * from child
delete from parent where pid=3
insert into child values(101,'c2',2)
insert into child values(102,'c3',1)
insert into child values(103,'c4',3)

update parent set pid=20 where pid=2
select * from parent
select * from child
delete from parent where pid=3

select*from batch2