--join
use [70-461]
go
select D.DepartmentHead, sum(T.Amount) as SumOfAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
group by  D.DepartmentHead
order by D.DepartmentHead
go
select E.EmployeeNumber as ENumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName,
	   T.EmployeeNumber as TNumber,
	   sum(T.Amount) as TotalAmount
from tblEmployee as E
left join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
group by   E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
order by E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
go
select E.EmployeeNumber as ENumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName,
	   T.EmployeeNumber as TNumber,
	   sum(T.Amount) as TotalAmount
from tblEmployee as E
left join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber is null
group by   E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
order by E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
go
---derived table
select *
from
(
select E.EmployeeNumber as ENumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName,
	   T.EmployeeNumber as TNumber,
	   sum(T.Amount) as TotalAmount
from tblEmployee as E
left join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
group by   E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
) as newTable
where TNumber is null
order by ENumber, TNumber,
		 EmployeeFirstName,
		 EmployeeLastName

go
select ENumber, 
		 EmployeeFirstName,
		 EmployeeLastName

from
(
select E.EmployeeNumber as ENumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName,
	   T.EmployeeNumber as TNumber,
	   sum(T.Amount) as TotalAmount
from tblEmployee as E
left join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
group by   E.EmployeeNumber, T.EmployeeNumber,
       E.EmployeeFirstName,
	   E.EmployeeLastName
) as newTable
where TNumber is null
order by ENumber, TNumber,
		 EmployeeFirstName,
		 EmployeeLastName

go
select ENumber, 
		 EmployeeFirstName,
		 EmployeeLastName

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
where TNumber is null
order by ENumber, TNumber,
		 EmployeeFirstName,
		 EmployeeLastName

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
--where TNumber is null
order by ENumber, TNumber,
		 EmployeeFirstName,
		 EmployeeLastName

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
where TNumber is null
order by ENumber, TNumber,
		 EmployeeFirstName,
		 EmployeeLastName

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