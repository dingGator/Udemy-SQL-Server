declare @mydate as datetime = '2015-06-24 12:34:56.124'  --3,7,0
select @mydate as MyDate

declare @mydate2 as datetime = '20150624 12:34:56.124'
select @mydate2 as MyDate2

declare @mydate3 as datetime2= '20150624 12:34:56.124'
select @mydate3 as MyDate3

declare @mydate4 as datetime2(3)= '20150624 12:34:56.124'   
--2 take 6 bytes 3 take 7 bytes --4 take 8 bytes
select @mydate4 as MyDate4

select DATEFROMPARTS(2015,06,24) as ThisDate 
select DATETIME2FROMPARTS(2015,06,24,12,34,56,124,3) as ThatDate
select year(@mydate) as myYear,
        month(@mydate) as myMonth,
		day(@mydate) as myDay  --no time

select CURRENT_TIMESTAMP as RightNowTimeStamp   --format in datetime
select getDate() as RightNowDate  --format in datetime
select SYSDATETIME() as RightNowSysDateTime
select dateadd(year,1,'2015-01-02 03:04:05') as myYear
select DATEPART(hour,'2015-01-02 03:04:05') as nyYear2
select DATENAME(weekday, getdate()) as myWeekday
select datediff(second,'2015-01-02 03:04:05', getdate()) as MonthsElapsed