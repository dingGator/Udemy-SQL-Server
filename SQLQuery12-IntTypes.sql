
--create temporary variables
declare @myvar as int =2
select @myvar as myVariable1
declare @myvar2 as int
set @myvar2 = 3

select @myvar2 as myVariable2
set @myvar2 = @myvar2 + 4
select @myvar2 as myVariable3
set @myvar = 2.5
select @myvar as myVariable4 --truncate
set @myvar2 =-2
select @myvar2 as myVariable5
set @myvar2 =-2.4
select @myvar2 as myVariable6  -- truncate