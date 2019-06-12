--smallmoney

declare @myvar1 as smallmoney = 123456.1234
select @myvar1 as myVariable1


----- if more decimal than 4 then round up
declare @myvar2 as smallmoney = 123456.12345678
select @myvar2 as myVariable2


-- float --7 digits
declare @myvar3 as float(24) = 1234567891.12345678
select @myvar3 as myVariable3

--real
declare @myvar4 as real = 1234567891.12345678
select @myvar4 as myVariable4