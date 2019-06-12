--non integer number
-- numeric and decimal only require p--precision value 
-- but DO NOT need scale value 
-- numeric (p[,s])
-- decimal (p[,s])

-- precision default is 18
-- scale default is 0




declare @myvar1 as decimal(7)
set @myvar1 = 12345.67
select @myvar1 as myDecimal1
print (@myvar1)
-- decimal round up thus:  12346

print ('---------------------------------------')


-------- int  ----
declare @myvar2 as int 
set @myvar2 = 12345.67
select @myvar2 as myInt2
print (@myvar2)
print ('---------------------------------------')

-------- numweic ---
declare @myvar3 as numeric(8,8)
set @myvar3= 123456789.123
select @myvar3 as myNumeric3

print (@myvar3)
print ('---------------------------------------')


--decimal-------------------------
declare @myvar4 as decimal(7)
set @myvar4 = 12345678.67

select @myvar4 as myDecimal4
print (@myvar4)

print ('---------------------------------------')
declare @myvar5 as decimal(7,3)
set @myvar5 = 12345.6789

select @myvar5 as myDecimal5
print (@myvar5)

print ('---------------------------------------')

