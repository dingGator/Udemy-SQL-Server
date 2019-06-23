-- does not work because of precedence order
--string is low precedence
--date time is high precedence 
--so conversion can NOT happen:
--Conversion failed when converting date and/or time from character string.
-----declare @mydate as datetime = '2015-06-25 01:02:03.456'
-----select 'The date and time is : '+ @mydate
go 

--but use convert works
declare @mydate as datetime = '2015-06-25 01:02:03.456'
select convert(nvarchar(20),@mydate) as MyConvertedDate
go 

declare @mydate as datetime = '2015-06-25 01:02:03.456'
select 'The date and time is: ' + convert(nvarchar(20),@mydate) as MyConvertedDate
go 
declare @mydate as datetime = '2015-06-25 01:02:03.456'
select cast(@mydate as nvarchar(20)) as MyCastDate
go
-- convert does not work
-----select convert(date, 'Thursday, 25 June 2015') as MyConvertedDate
-----go
select parse('Thursday, 25 June 2015' as date) as MyParseDate
--if say Friday---fail
--Error converting string value 'Friday, 25 June 2015' into data type date using culture ''.
-----select parse('Friday, 25 June 2015' as date) as MyParseDate

--if in Spanish-- fail
--Error converting string value 'jueves, 25 junio de 2015' into data type date using culture ''.
-----select parse('jueves, 25 junio de 2015' as date) as MySpanishParseDate

-- is clarify to use spanish of spain ( or mexico or argentina) 
--then will work
select parse('jueves, 25 junio de 2015' as date using 'es-ES') as MySpanishParseDate

select format(cast('2015-06-25 01:02:03.456' as datetime), 'D') as MyFormattedLongDate

select format(cast('2015-06-25 01:02:03.456' as datetime), 'd') as MyFormattedShortDate
--month needs to be in capital   --MM
-- -----------------------------or it will take the minutes  if dd-mm-yyyy
select format(cast('2015-06-25 01:02:03.456' as datetime), 'dd-MM-yyyy') as MyFormattedBrittishDate

select format(cast('2015-06-25 01:02:03.456' as datetime), 'dd-MM-yyyy') as MyFormattedBrittishDate

select format(cast('2015-06-25 01:02:03.456' as datetime), 'D', 'de-DE') as MyFormattedInternationalDate

select format(cast('2015-06-25 01:02:03.456' as datetime), 'D', 'zh-CH') as MyFormattedInternationalDate

select format(cast('2015-06-25 01:02:03.456' as datetime), 'D', 'es-ES') as MyFormattedInternationalDate


declare @mydate as datetime = '2015-06-25 01:02:03.456'
select 'The date and time is: ' + convert(nvarchar(20),@mydate,101) as MyConvertedDate
go 