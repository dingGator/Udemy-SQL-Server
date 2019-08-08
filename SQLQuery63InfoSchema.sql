if exists( select * from sys.views where name='ViewByDepartment')
drop view dbo.ViewByDepartment
go
select * from INFORMATION_SCHEMA.VIEWS
where TABLE_NAME = 'ViewByDepartment' and TABLE_SCHEMA = 'dbo'
go
if exists(select * from INFORMATION_SCHEMA.VIEWS
where [TABLE_NAME] = 'ViewByDepartment' and [TABLE_SCHEMA] = 'dbo')
drop view dbo.ViewByDepartment1
go

