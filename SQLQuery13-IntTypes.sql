--initalize a variable, give it a data type and initial value
-- variable with type as tinyint
declare @myvar as tinyint = 2
select @myvar as myVariable
--increase that value by 1
set @myvar = @myvar +1
-- retrieve that value
select @myvar as myVariable2
-- subtract 3 make 0
set @myvar = @myvar -3
select @myvar as myVariable3
-- subtract 4 make -1   
--error msg
--Msg 220, Level 16, State 2, Line 12
--Arithmetic overflow error for data type tinyint, value = -4.
-- give value 0
set @myvar = @myvar -4
select @myvar as myVariable4
--new variable  
declare @myvar2 as tinyint = 2
set @myvar2 = @myvar2 - .5   --truncate
select @myvar2 as myVariable5
-- new variable --smallint
declare @myvar3 as smallint = 2000
set @myvar3 = @myvar3*10  
select @myvar3 as myVariable6