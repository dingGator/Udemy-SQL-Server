use  [70-461]
go

select Department, count(*) as NumberOfDepartment
from tblEmployee
group by Department

go
--derived table
select Department
from
(select Department, count(*) as NumberOfDepartment
from tblEmployee
group by Department) as newTable
go
select count(Department) as NumberOfDepartment
from
(select Department, count(*) as NumberOfDepartment
from tblEmployee
group by Department) as newTable
go

select distinct Department, EmploeeGovernmentID
from tblEmployee
go


select distinct Department, '' as DepartmentHead
from tblEmployee
go


drop table tblDepartment
select distinct Department, '' as DepartmentHead
into tblDepartment
from tblEmployee
go
drop table tblDepartment
select distinct Department, convert(varchar(20),N'') as DepartmentHead
into tblDepartment
from tblEmployee
go

alter table tblDepartment
alter column DepartmentHead varchar(30) null
