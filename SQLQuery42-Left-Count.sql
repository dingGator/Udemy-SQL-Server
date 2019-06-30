select left (employeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
order by count(*) desc

select top (5)left (employeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
order by count(*) desc

select top (5) left (employeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
where DateOfBirth > '19760101'
group by left(EmployeeLastName,1)
having count(*) >=20
order by CountOfInitial desc
