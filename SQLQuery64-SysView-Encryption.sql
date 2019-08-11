select * from sys.syscomments 
select * from sys.views

select * from sys.syscomments as S
inner join sys.views as V
 on S.id = v.object_id

 select V.name, S.text from sys.syscomments as S
inner join sys.views as V
 on S.id = v.object_id

 select object_definition (object_id('dbo.ViewByDepartment'))
 select * from sys.sql_modules

 --use WITH ENCRYPTION

 -- create view [dbo].[ViewByDepartment] WITH ENCRYPTION as


 -- make to secure unless hacking into  database
 -- you ** also** can not get to it