create database worktable
use worktable
create table workerdetails
(
worker_id int primary key,
first_name varchar(20) ,
last_name varchar(20),
salary varchar(15),
)
drop table workerdetails

select * from workerdetails 

insert into workerdetails values(1,'gayathri','saravanan','50000')
insert into workerdetails values(2,'kiruthika','bala','50000')
insert into workerdetails values(3,'sangeetha','mohan','50000')
insert into workerdetails values(4,'sowmiya','kajendhiran','50000')


select first_name as workername from workerdetails 
         -- 1--select first_name as upper from workerdetails  
select upper (first_name) from workerdetails

alter table workerdetails add Departments varchar(50)
update workerdetails  set Departments='Testing' where worker_id=1
update workerdetails  set Departments='UI' where worker_id=2
update workerdetails  set Departments='UI' where worker_id=3
update workerdetails  set Departments='Testing' where worker_id=4

insert into workerdetails values(5,'saranya','guru','30000','marketing','ECE')

       --3--unique values
select distinct Departments from  workerdetails
        --4-first three characters 
select substring (first_name ,1,3)from workerdetails
         --5--Department Length
select len(departments) from workerdetails

alter table workerdetails add heading varchar(20)

select distinct heading from workerdetails


      --6----Complete Name---
select CONCAT(first_name,last_name)AS 'COMPLETE_NAME' from workerdetails  
         ---question7---
select * from workerdetails where first_name in('vipul','satish');
         ---question8--

insert workerdetails values(6,'vasanth','Arun',20000,'Admin')

select * from workerdetails where departments like'admin%';
          --question 9
select * from workerdetails where first_name like'%a';
          --question 10
select * from workerdetails where first_name like'%a%';
alter table workerdetails drop column heading;