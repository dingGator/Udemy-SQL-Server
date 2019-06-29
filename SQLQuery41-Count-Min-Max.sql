select DATEPART(month,DateOfBirth) as MonthNumber,
count(*) as NumberEmployees 
from tblEmployee
group by DATEPART(month,DateOfBirth)


select DATENAME(month,DateOfBirth) as MonthName,
count(*) as NumberEmployees
from tblEmployee
group by DATENAME(month,DateOfBirth)

select DATENAME(month,DateOfBirth) as MonthName,
count(*) as NumberEmployees
from tblEmployee
group by DATENAME(month,DateOfBirth)
order by DATENAME(month,DateOfBirth)

select DATENAME(month,DateOfBirth) as MonthName,
count(*) as NumberEmployees
from tblEmployee
group by DATENAME(month,DateOfBirth), DATEPART(month,DateOfBirth)
order by DATEPART(month,DateOfBirth)

select DATENAME(month,DateOfBirth) as MonthName,
count(*) as NumberEmployees,
YEAR(DateOfBirth)
from tblEmployee
group by DATENAME(month,DateOfBirth), YEAR(DateOfBirth)
order by YEAR(DateOfBirth)

select DATENAME(month,DateOfBirth) as MonthName,
count(*) as NumberEmployees,
count (EmployeeMiddleName) as NumberOfMiddleName,
count (*)-count(EmployeeMiddleName) as NoMiddleName,
format(min(DateOfBirth),'dd-MM-yyyy') as earliestdateofbirth,
format(max(DateOfBirth),'D') as latestdateofbirth
from tblEmployee
group by DATENAME(month,DateOfBirth), 
DATEPART(MONTH,DateOfBirth)
order by DATEPART(MONTH,DateOfBirth)


