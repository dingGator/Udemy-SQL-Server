USE [70-461]
GO

begin tran
insert into ViewByDepartment(EmployeeNumber,DateOfTransaction,TotalAmount)
values(132,'2015-07-07',999.99)
select * from ViewByDepartment order by Department, EmployeeNumber

select * from tblTransaction where EmployeeNumber =132


rollback tran

begin tran
--Error
--View or function 'ViewByDepartment' is not updatable 
--because the modification affects multiple base tables.
--bcs it relate to two tables: 
--tblDepartment.Department & tblTransaction.EmployeeNumber 


insert into ViewByDepartment(Department,DateOfTransaction,TotalAmount)
values('Customer Relations',132,'2015-07-07',999.99)
select * from ViewByDepartment order by Department, EmployeeNumber

select * from tblTransaction where EmployeeNumber =132


rollback tran

begin tran
select * from ViewByDepartment order by EmployeeNumber, DateOfTransaction
select * from tblTransaction where EmployeeNumber in(132,142)

update ViewByDepartment
set EmployeeNumber= 142
where EmployeeNumber =132

select * from ViewByDepartment order by EmployeeNumber, DateOfTransaction
select * from tblTransaction where EmployeeNumber in(132,142)

rollback tran