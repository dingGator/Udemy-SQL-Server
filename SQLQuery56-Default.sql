use [70-461]
go
alter table tblTransaction
add DateOfEntry datetime

alter table tblTransaction
add constraint defDateOfEntry DEFAULT GETDATE() for DateOfEntry;

select * from tblTransaction
where EmployeeNumber <3

delete from tblTransaction 
where EmployeeNumber <3

insert into tblTransaction(Amount, DateOfTransaction, EmployeeNumber)
values(1, '2014-01-01', 1)

insert into tblTransaction(Amount, DateOfTransaction, EmployeeNumber, DateOfEntry)
values (2, '2014-01-01' , 1, '2013-01-01')

select * from tblTransaction
where EmployeeNumber <3

create table tblTransaction2
(Amount smallmoney not null,
DateOfTransaction smalldatetime not null,
EmployeeNumber int not null,
DateOfEntry datetime null constraint tblTransaction2_defDateOfEntry default GETDATE())

select * from tblTransaction2
where EmployeeNumber <3
insert into tblTransaction2(Amount, DateOfTransaction, EmployeeNumber)
values(1, '2014-01-01', 1)

insert into tblTransaction2(Amount, DateOfTransaction, EmployeeNumber, DateOfEntry)
values (2, '2014-01-01' , 1, '2013-01-01')

select * from tblTransaction2
where EmployeeNumber <3

drop table tblTransaction2

alter table tblTransaction
drop column DateOfEntry


alter table tblTransaction
drop constraint defDateOfEntry