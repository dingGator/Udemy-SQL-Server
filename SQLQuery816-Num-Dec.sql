--non integer number
-- numeric and decimal only require p--precision value 
-- but DO NOT need scale value 
-- numeric (p[,s])
-- decimal (p[,s])


---print out message to see what each step produce


declare @myvar1 as decimal(7)
set @myvar1 = 12345.67
select @myvar1 as myDecimal1
print ('-- decimal (7)    12345.67')
print ('-- decimal round up 12346')
print (@myvar1)
-- decimal round up thus:  12346

print ('---------------------------------------')


-------- int  ----
declare @myvar2 as int 
set @myvar2 = 12345.67
select @myvar2 as myInt2
print ('-- int ----- truncate  12345.67')
print (@myvar2)
print ('---------------------------------------')

-------- numeric ---
print ('-- declare numeric(8,8)  ---')
declare @myvar3 as numeric(8,8)
print ('--  set @myvar3= 123456789   -----')
set @myvar3= 123456789.123
print ('--Arithmetic overflow error ----')

print ('-- select @myvar3 as myNumeric3  ---')
select @myvar3 as myNumeric3
print('--- print a variable with a NULL value ------')

print (@myvar3)
print('----- print does not print a NULL value variable--')

print ('---------------------------------------')


--decimal-------------------------
print ('-- declare decimal (7)   ')
declare @myvar4 as decimal(7)

print ('-- set   12345678.67')
set @myvar4 = 12345678.67
print ('---Arithmetic overflow error ----')

select @myvar4 as myDecimal4
print('--- print a NULL value ----- print does not print a NULL value variable--')
print (@myvar4)
print('----- print does not print a NULL value variable--')

print ('---------------------------------------')
print ('-- declare decimal (7,3)   ')
declare @myvar5 as decimal(7,3)

print ('-- set   12345.6789')
set @myvar5 = 12345.6789
--print ('---Arithmetic overflow error ----')

select @myvar5 as myDecimal5
--print('--- print a NULL value ----- print does not print a NULL value variable--')
print (@myvar5)
print('----- print does not print a NULL value variable--')

print ('---------------------------------------')

