--Indexes

use ibm

select * from employee

--Non clustered index 

create index inx_id on employee(id)

create nonclustered  index inx_salary on employee(salary)

select * from employee where city = 'Delhi'

create nonclustered index inx_city_1 on employee(city)

select * from employee order by city 

select * from employee where city = 'delhi'

select * from fish

select * from fish where firstname = 'Tom'

create nonclustered index f_idx on fish(firstname)

select * from fish where firstname = 'Tom'

--earlier it was searching 198 rows after index it is searching only 28 rows 

drop index fish.f_idx

drop index employee.inx_city_1

--Clustered Index

select * from employee

alter table employee alter column name varchar(255) not null

alter table employee add constraint pri_name Primary key(name)

select * from employee

alter table employee drop constraint pri_name

create clustered index inx_id_c on employee(id)

select * from employee

insert into employee values ( 2, 'Kavita', 34, 'Female',  59000,'IT', 'Pune', 'India')

select * from employee



