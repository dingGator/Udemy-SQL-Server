select * from tblEmployee
where DateOfBirth between '19760101' and '19861231'


select * from tblEmployee
where DateOfBirth >= '19760101' and DateOfBirth< '19861231'

select * from tblEmployee
where year(DateOfBirth) between 1976 and 1986  --DO NOT USE

select year(DateOfBirth) as YearOfDateOfBirth,
count(*) as NumberBorn
from tblEmployee
where 1=1
group by year(DateOfBirth)

-- the order that computer does it is:
-------from
-------where
-------group by
-------select

--------so can NOT use the 'as' /'alias' name of column in group by

select year(DateOfBirth) as YearOfDateOfBirth,
count(*) as NumberBorn
from tblEmployee
where 1=1
group by year(DateOfBirth)
order by year(DateOfBirth)
--==default  is ascending
select year(DateOfBirth) as YearOfDateOfBirth,
count(*) as NumberBorn
from tblEmployee
where 1=1
group by year(DateOfBirth)
order by year(DateOfBirth) asc


select year(DateOfBirth) as YearOfDateOfBirth,
count(*) as NumberBorn
from tblEmployee
where 1=1
group by year(DateOfBirth)
order by year(DateOfBirth) desc


