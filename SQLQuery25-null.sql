declare @myvar as int
--if not set then answer is NULL
--if +-/* @myvar then answer is NULL
select @myvar as myCol1
select @myvar+1 as myCol2
select @myvar*1 as myCol3
select @myvar/2 as myCol4
select 1+@myvar+1 as myCol5

declare @mystring as nvarchar(20)
select datalength(@mystring) as myString

declare @mydecimal decimal(5,2)
select convert(decimal(5,2),1000)
select cast(1000 as decimal(5,2))

select try_convert(decimal(5,2),1000)
select try_cast(1000 as decimal(5,2))

