



insert into tblEmployee2(EmployeeNumber,EmployeeName)
values(3,'My Name'),(4,'My Name')

set identity_insert tblEmployee2 on

insert into tblEmployee2
values('My Name'),
('My Name')

select* from tblEmployee2

set identity_insert tblEmployee2 off

insert into tblEmployee2(EmployeeNumber,EmployeeName)
values(30,'My Name'),(40,'My Name')


--this tells what was last used
select @@identity

-- this tells scope of each functions and procedures
select scope_identity()


--this gives identity of the table name
select ident_current('dbo.tblEmployee2')