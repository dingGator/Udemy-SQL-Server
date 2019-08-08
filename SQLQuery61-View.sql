select D.Department, T.EmployeeNumber, 
T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
order by D.Department, T.EmployeeNumber
go
select D.Department, T.EmployeeNumber as EmpNum,
sum(T.Amount) as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
group by D.Department, T.EmployeeNumber
order by D.Department, T.EmployeeNumber
go
select 1
go
create view ViewByDepartment1 as
select top(100) percent D.Department, T.EmployeeNumber, 
T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
order by D.Department, T.EmployeeNumber

go

select 1
go

--No order by in view
create view ViewByDepartment2 as
select top(100) percent D.Department, T.EmployeeNumber, 
T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
--order by D.Department, T.EmployeeNumber

go

select * from ViewByDepartment1
go
create view ViewSummary as
select D.Department, T.EmployeeNumber as EmpNum,
sum(T.Amount) as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
group by D.Department, T.EmployeeNumber
--order by D.Department, T.EmployeeNumber
go
select * from ViewByDepartment2
select* from ViewSummary