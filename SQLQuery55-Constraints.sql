use [70-461]
--alter table tblEmployee
--add constraint unqGovernmentID UNIQUE (EmployeeGovernmentID);
go
select EmployeeGovernmentID,
count(EmployeeGovernmentID) as myCount 
from tblEmployee
group by EmployeeGovernmentID
having count(EmployeeGovernmentID)>1;
go
select * 
from tblEmployee 
where EmployeeGovernmentID in('HN513777D', 'TX593671R');
go

alter table tblTransaction
add constraint unqTransaction unique(Amount, DateOfTransaction,EmployeeNumber)
go
delete from tblTransaction
where EmployeeNumber =131
go
select * 
from tblTransaction
where EmployeeNumber =131
go
insert into tblTransaction
values(1,'2015-01-01', 131);
insert into tblTransaction
values(1,'2015-01-01', 131);
go
select * 
from tblTransaction
where EmployeeNumber =131
go

alter table tblTransaction
drop constraint unqTransaction
go

create table tblTransaction2
(Amount smallmoney not null,
DateOfTransaction smalldatetime not null,
EmployeeNumber int not null,
constraint unqTransaction2 unique (Amount,DateOfTransaction,EmployeeNumber))
go

insert into tblTransaction2
values(1,'2015-01-01', 131);
insert into tblTransaction2
values(1,'2015-01-01', 131);
go
drop table tblTransaction2
go