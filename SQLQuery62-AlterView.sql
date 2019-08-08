USE [70-461]
GO

/****** Object:  View [dbo].[ViewByDepartment]    Script Date: 8/8/2019 12:32:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER view [dbo].[ViewByDepartment] as
select top(100) percent D.Department, T.EmployeeNumber, 
T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
order by D.Department, T.EmployeeNumber

GO

drop view dbo.ViewByDepartment
