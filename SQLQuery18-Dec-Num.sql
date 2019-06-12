-- int, numeric, decimal 
-- precision default is 18
-- scale default is 0


-- numeric rounds up when no scale (decimal) specify
declare @myvar1 as numeric
set @myvar1 =12345.67
select @myvar1 as myVariable1
print (@myvar1)


-- int truncate when no scale --decimal specify
declare @myvar2 as int
set @myvar2 =12345.67
select @myvar2 as myVariable2
print (@myvar2)


-- decimal round up when no scale --decimal specify
declare @myvar3 as decimal
set @myvar3 =12345.67
select @myvar3 as myVariable3
print (@myvar3)


-- 
declare @myvar4 as numeric (18,8)
set @myvar4 =1234567891.12345678
select @myvar4 as myVariable4
print (@myvar4)

---
print ('-----var5--------------')

declare @myvar5 as numeric (18,8)
set @myvar5 = 1234567891.123456789123
select @myvar5 as myVariable5
print (@myvar5)

print ('-----var6--------------')
declare @myvar6 as numeric (18,8)
set @myvar6 = 12345678912.123456789123
select @myvar6 as myVariable6
print (@myvar6)
