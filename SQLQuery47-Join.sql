--join:
--inner   ---- default--has to be in both
         ----- if not specify 
		 ----- which join then default to inner join
--left    ---- All the rows in the left table
--right   ---- All the rows in the right table
--cross   ---- give all combination of right and left table
          ---- not used
-------------- 


select EmployeeNumber, sum(amount) as totalAmount
from tblTransaction
group by EmployeeNumber


go
select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, Amount
from tblEmployee
join tblTransaction
on tblEmployee.EmployeeNumber =tblTransaction.EmployeeNumber
go

select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, sum(Amount) as sumofAmount
from tblEmployee
join tblTransaction
on tblEmployee.EmployeeNumber =tblTransaction.EmployeeNumber
group by tblEmployee.EmployeeNumber, EmployeeFirstName,EmployeeLastName
order by EmployeeNumber
go

select* from tblEmployee where EmployeeNumber =1046
go
select* from tblTransaction where EmployeeNumber =1046
go

select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, sum(Amount) as sumofAmount
from tblEmployee
left join tblTransaction
on tblEmployee.EmployeeNumber =tblTransaction.EmployeeNumber
group by tblEmployee.EmployeeNumber, EmployeeFirstName,EmployeeLastName
order by EmployeeNumber
go

select count(employeeNumber) as employeecount
from tblEmployee
go
select count(employeeNumber) as employeeCount,
EmployeeNumber as employeeNumber
from tblTransaction
group by EmployeeNumber
order by employeeNumber
go

