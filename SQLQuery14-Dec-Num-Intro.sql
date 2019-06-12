--non integer number

--------   decimal  ---------
declare @myvar1 as decimal(7,2)
-- 12345.67 is valid for the above
-- 123456.7 is not valid
set @myvar1 = 12345.67
select @myvar1 as myDecimal1
print (@myvar1)
set @myvar1 = 123456.7
select @myvar1 as myDecimal2
print (@myvar1)
-- since there is an Arithmetic overflow ERROR in myVariable2 
-- it rollback to the value of the original: 12345.67

-------  numeric  ----------
declare @myvar3 as numeric(7,2)
-- 12345.67 is valid for the above
-- 123456.7 is not valid
set @myvar3 = 12345.67
select @myvar3 as myNumeric1
print (@myvar3)
set @myvar3 = 123456.7
select @myvar3 as myNumeric2
print (@myvar3)
-- since there is an Arithmetic overflow ERROR in myVariable2 
-- it rollback to the value of the original: 12345.67
