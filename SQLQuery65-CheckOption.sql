USE [70-461]
GO

/****** Object:  View [dbo].[ViewByDepartment]    Script Date: 8/11/2019 1:40:19 PM ******/
SET ANSI_NULLS ON
GO

--if exists(select * from sys.views where name - ViewByDepartment)
if exists(select * from INFORMATION_SCHEMA.VIEWS
where [TABLE_NAME] ='ViewByDepartment' and [TABLE_SCHEMA] ='dbo')
drop view dbo.ViewByDepartment

SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[ViewByDepartment] as
select  D.Department, T.EmployeeNumber, 
T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
--order by D.Department, T.EmployeeNumber
GO

CREATE view [dbo].[ViewByDepartment] as
select  D.Department, T.EmployeeNumber, 
T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
with CHECK OPTION

--order by D.Department, T.EmployeeNumber
--with check option will not allow
--an UPDATE :
/* 
update ViewByDepartment
set EmployeeNumber= 142
where EmployeeNumber =132
*/
--because it would expand the view 
--bcs view only goes employee number from 120-139

--bcs the 
GO




