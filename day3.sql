use worktable

select * from workerdetails
select avg(Salary) as 'Average Salary' from workerdetails
select min(Salary) as 'Minimum Salary' from workerdetails
select max(Salary) as 'Maximum Salary' from workerdetails
select count(Salary) as 'Count Salary' from workerdetails
select sum(Salary) as 'Sum Salary' from workerdetails
create table dummy
(
Eid int,Ename varchar(20),salary int,Edesgination varchar(20) )

insert into dummy values(1,'Saravanan',75000,'Marketing')
insert into dummy values(2,'Augustus',100000,'CEO')
insert into dummy values(3,'Sowmiya',80000,'Testing')
insert into dummy values(4,'Mohamed thahir',50000,'JFS')

select * from dummy

select avg(Salary) as 'Average Salary' from dummy
select min(Salary) as 'Minimum Salary' from dummy
select max(Salary) as 'Maximum Salary' from dummy
select count(Salary) as 'Count Salary' from dummy
select sum(Salary) as 'Sum Salary' from dummy

---select avg(Salary) as 'Average Salary',Edesgination from dummy where Edesgination='CEO'

select avg(Salary) as 'Average Salary',Edesgination from dummy group by EDesgination

select avg(Salary) as 'Average Salary',Edesgination from dummy group by Edesgination having Edesgination='Testing'

--order by clause- default asc
select * from dummy order by salary 
select * from dummy order by salary desc

select * from dummy order by salary desc,Eid desc


select * from dummy
--create synonym
create synonym d1 for dummy
select * from dummy
select * from d1

use worktable
create table students
(
SID int primary key,
SName varchar(25) not null,
SDept varchar(25) not null,
SClub varchar(30) not null,
)
drop table students
insert into students values(7001,'Gayathri','mech','blue')


create table SDept
(
DID int primary key,
DeptName varchar(25) not null
)
create table SClub
(
CID int primary key,
ClubName varchar(25) not null
)

select * from students
select * from SDept

select SID,SName,SDept,DeptName from students inner join SDept on SDept=DeptName


select * from SDept
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=DeptName
select * from SClub

--IDENTITY
create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into sample values('Sam')
select * from sample
create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'meter')

alter sequence empid restart with 1 increment by 1
create table sample2
(
id int primary key ,
name varchar(20)
)
insert into sample2 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample2
insert into sample2 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample2 values(NEXT VALUE FOR EMPID,'John')


select NEXT VALUE FOR EMPID

select * from students












