--Activity 3
--version 1
declare @myvar1 as smallint 
set @myvar1 =20000
select @myvar1 as myVariable1
print(@myvar1)
--version 2
set @myvar1 = 200000
select @myvar1 as myVariableWrong
print(@myvar1)
--version 3
declare @myvar2 as int
set @myvar2 =200000 
select @myvar2 as myVariable2
print(@myvar2)
--version 4
declare @myvar3 as tinyint
set @myvar3 =20000
select @myvar3  as myVariable3
print(@myvar3)