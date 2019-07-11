--delete data from table
use [70-461]
go

select count(*) 
from tblTransaction
go


select *
from
(
select E.EmployeeNumber as ENumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName,
	   T.EmployeeNumber as TNumber,
	   sum(T.Amount) as TotalAmount
from tblEmployee as E
right join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
group by   E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
) as newTable
where ENumber is null
order by ENumber, TNumber,
		 EmployeeFirstName,
		 EmployeeLastName

go

begin transaction

select count(*) 
from tblTransaction

delete tblTransaction
from tblEmployee as E
right join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where E.EmployeeNumber is null

select count(*) 
from tblTransaction


rollback transaction

select count(*) 
from tblTransaction
go

select *
from
(
select E.EmployeeNumber as ENumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName,
	   T.EmployeeNumber as TNumber,
	   sum(T.Amount) as TotalAmount
from tblEmployee as E
right join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
group by   E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
) as newTable
where ENumber is null
order by ENumber, TNumber,
		 EmployeeFirstName,
		 EmployeeLastName

go
