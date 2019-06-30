select DATEPART(month, dateofbirth) as monthnumber,
count(*) as numberEmployees
from tblEmployee
group by DATEPART(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees
from tblEmployee
group by DATENAME(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees
from tblEmployee
group by DATENAME(month, dateofbirth)
order by DATENAME(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees
from tblEmployee
group by DATENAME(month, dateofbirth),DATEPART(month, dateofbirth)
order by DATEPART(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees,
year(dateofbirth)
from tblEmployee
group by DATENAME(month, dateofbirth),YEAR(dateofbirth),DATEPART(month, dateofbirth)
order by DATEPART(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees,
count(EmployeeMiddleName) as NumberOfMiddleName
from tblEmployee
group by DATENAME(month, dateofbirth),DATEPART(month, dateofbirth)
order by DATEPART(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees,
count(EmployeeMiddleName) as NumberOfMiddleName,
count(*) -count(EmployeeMiddleName) as NoMiddleName
from tblEmployee
group by DATENAME(month, dateofbirth),DATEPART(month, dateofbirth)
order by DATEPART(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees,
count(EmployeeMiddleName) as NumberOfMiddleName,
count(*) -count(EmployeeMiddleName) as NoMiddleName,
min(dateofbirth) as earliestdateofbirth,
max(dateofbirth) as latestdateofbirth
from tblEmployee
group by DATENAME(month, dateofbirth),DATEPART(month, dateofbirth)
order by DATEPART(month, dateofbirth)

select DATENAME(month, dateofbirth) as monthname,
count(*) as numberEmployees,
count(EmployeeMiddleName) as NumberOfMiddleName,
count(*) -count(EmployeeMiddleName) as NoMiddleName,
format(min(dateofbirth), 'dd-MM-yyy') as earliestdateofbirth,
format(max(dateofbirth),'D') as latestdateofbirth
from tblEmployee
group by DATENAME(month, dateofbirth),DATEPART(month, dateofbirth)
order by DATEPART(month, dateofbirth)