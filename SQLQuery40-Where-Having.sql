use [70-461]

select * from tblEmployee

select left(EmployeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
order by left(EmployeeLastName,1)


select left(EmployeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
order by count(*) desc --left(EmployeeLastName,1)


select top(5) left(EmployeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
order by count(*) desc --left(EmployeeLastName,1)

select top(5) left(EmployeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
having count(*) >=20
order by count(*) desc --left(EmployeeLastName,1)

select top(5) left(EmployeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
where DateOfBirth > '19760101'
group by left(EmployeeLastName,1)
having count(*) >=20
order by count(*) desc --left(EmployeeLastName,1)

-- the order by clause can use 'as' /'alias' column name
--bcs:  the order that the functions are run is:
-------from
-------where
-------group by
-------having
-------select
-------order by
--  thus order by can use the 'as'/'alias' column name

select top(5) left(EmployeeLastName,1) as Initial,
count(*) as CountOfInitial
from tblEmployee
where DateOfBirth > '19760101'
group by left(EmployeeLastName,1)
having count(*) >=20
order by CountOfInitial desc 