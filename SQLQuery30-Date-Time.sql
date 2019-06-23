declare @myDateOffset as datetimeoffset(2) = '2015-06-25 01:02:03.456 +05:30' 
--datetimeoffset(2)   is 8 bytes --it rounds it to nearest two decimal place
select @myDateOffset as myDateOffset1
go
declare @myDateOffset as datetimeoffset = '2015-06-25 01:02:03.456 +05:30' 
--8 to 10 bytes
select @myDateOffset as myDateOffset2
go
declare @myDate as datetime2 = '2015-06-25 01:02:03.456'
select TODATETIMEOFFSET(@myDate, '+05:30') as MyDatOffset3

select DATETIME2FROMPARTS(2015,06,25,1,2,3,456,3) as MyDate2Offset4
select DATETIMEOFFSETFROMPARTS(2015,06,25,1,2,3,456,5,30,3) as MyDateOffset4

select DATETIMEOFFSETFROMPARTS(2015,06,25,1,2,3,456,5,30,3) as MyDateOffset4

select SYSDATETIMEOFFSET() as TimeNowWithOffset5;

select SYSUTCDATETIME() as TimeNowUTC6

declare @myDateOffset as datetimeoffset = '2015-06-25 01:02:03.456 +05:30'
select SWITCHOFFSET(@myDateOffset, '-05:00') as MyDateOffsetTexas7