create database student
use student

create table details
(
StuID int,
StuName varchar(15),
StuContact varchar(10),
StuDepartment varchar(15)
)
--create view studentview as

select Stuname,StuDepartment from details

select * from details

insert into details values(1,'Peter','9876543212','ECE')
insert into details values(2,'Paul','9876543712','CSE')
insert into details values(3,'Sam','9872543212','IT')
insert into details values(4,'John','9876563212','MECH')
insert into details values(5,'Jancy','9876143212','CIVIL')

update details set stuDepartment='Designer' where stuID=3
update details set stuName='Jancy' where stuName='John'
delete from details where StuID=3
alter table details add marks varchar(10)
update details set marks='99' where stuID=3
update details set marks='80' where stuID=1
update details set marks='76' where stuID=2
update details set marks='90' where stuID=4
update details set marks='84' where stuID=5
alter table details add pencil varchar(10)
update details set pencil='39' where StuID=3
alter table details drop column pencil
insert into details values(6,'gayathri','9943457288','ECE','91')
delete from details where StuID=3;
insert into details values(3,'Sam','9872543212','IT','99')

use student
create table demo
(
id int,
name varchar(10)
)

select * from demo

alter table demo add designation varchar(10)
alter table demo add mobile varchar(10)

--alter table to drop a column
alter table demo drop column mobile

insert into demo values(1,'Peter','Developer')
--Truncate table
truncate table demo
--drop table
drop table demo

--create database
create database demo
use demo

--alter database
alter database demo Modify Name=demonstration

--drop database
drop database demonstration

use student
select * from details

alter table details add Grade varchar(20)

update details set Grade='B' where StuID=1
update details set Grade='A'  where StuID=2
update details set Grade='C'  where StuID=3
update details set Grade='D'  where StuID=4
update details set Grade='O'  where StuID=5
update details set Grade='U'  where StuID=6

--Relational Operators(>,<,>=,<=,=,!=) Logical Operators
select * from details where marks > 80 OR Grade='B'
select * from details where marks > 50 OR  Grade='A'


--BETWEEN AND
select * from details where marks between 80 and 90
              --IN/NOT IN

select * from details WHERE StuDepartment in ('ECE')

select * from details WHERE StuDepartment not in ('MECH')

-LIKE %(0 or more occurences) _(one character)
select * from details where StuName like 'S%'
select * from details where StuName like '_a%'
select * from details where StuName like '%n'
select * from details where StuName like 's__'
select * from details where StuName like '[sj]%'
select * from details where StuName not like '[sj]%'
select * from details where StuName like '[a-e]%'
select * from details where StuName not like '[a-e]%'

--DISTINCT - avoid duplicate records
Select StuDepartment from details
Select DISTINCT StuDepartment  from details








