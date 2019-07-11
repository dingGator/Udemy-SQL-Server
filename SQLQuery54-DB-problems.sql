use[70-461]
go
select * from tblEmployee

select T.EmployeeNumber as TEmployeeNumber,
		E.EmployeeNumber as EEmployeeNumber,
		sum(amount) as SumAmount
from tblTransaction as T
left join tblEmployee as E
on T.EmployeeNumber = E.EmployeeNumber
group by T.EmployeeNumber, E.EmployeeNumber
order by EEmployeeNumber

begin tran

update tblEmployee
set DateOfBirth = '2101-01-03'
where EmployeeNumber = 537

select * from tblEmployee order by DateOfBirth desc

rollback tran

begin tran
update tblEmployee
set EmployeeGovernmentID = 'aaaa'
where EmployeeNumber between 530 and 539

select * from tblEmployee order by EmployeeGovernmentID asc

rollback tran