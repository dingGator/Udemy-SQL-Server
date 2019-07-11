
use [70-461]
go
select * from tblEmployee where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber =3
select * from tblTransaction where EmployeeNumber =194

go

begin transaction
select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber =3

update tblTransaction
set EmployeeNumber =194
from tblTransaction
where EmployeeNumber =3

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber =3

rollback transaction

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber =3

go
begin transaction
select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber between 3 and 10

update tblTransaction
set EmployeeNumber =194
from tblTransaction
where EmployeeNumber between 3 and 10

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber between 3 and 10

rollback transaction

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber between 3 and 10
go

begin transaction
select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber in (3,5,7,9)

update tblTransaction
set EmployeeNumber =194
from tblTransaction
where EmployeeNumber between 3 and 10

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber in (3,5,7,9)

rollback transaction

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber in (3,5,7,9)
go

begin transaction
select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber in (3,5,7,9)

update tblTransaction
set EmployeeNumber =194
output inserted.*, deleted.*
from tblTransaction
where EmployeeNumber between 3 and 10

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber in (3,5,7,9)

rollback transaction

select * from tblTransaction where EmployeeNumber =194
select * from tblTransaction where EmployeeNumber in (3,5,7,9)
go