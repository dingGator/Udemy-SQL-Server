--Deleting rows from views
-- CANNOT if the view affects more than one table


select * from ViewByDepartment
delete from ViewByDepartment
where TotalAmount = 999.99 and EmployeeNumber = 132
go

create view ViewSimple as
select * from tblTransaction
go
begin tran
delete from ViewSimple
where Amount = 999.99 and EmployeeNumber=132
rollback tran

select * from dbo.ViewByDepartment

if exists(select * from INFORMATION_SCHEMA.VIEWS
where [TABLE_NAME] = 'ViewByDepartment' and [TABLE_SCHEMA] = 'dbo')
 drop view dbo.ViewByDepartment
 go

 -- to create indexed view
 --must create view 
 -- must be inner join -----not outer join to work
CREATE view [dbo].[ViewByDepartment] with schemabinding as
select  D.Department, T.EmployeeNumber, 
T.DateOfTransaction, T.Amount as TotalAmount
from dbo.tblDepartment as D
inner join dbo.tblEmployee as E
on D.Department = E.Department
inner join dbo.tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
GO

--indexed view
--need where in indexed view
create unique clustered index inx_ViewByDepartment on
dbo.ViewByDepartment(EmployeeNumber, Department, DateOfTransaction)