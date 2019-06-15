--convert data types of int to decimal
select 3/2 as myVar1 --returns a int
select 3.0/2 as myVar2  --returns a dec
select 3/2.0 as myVar3  --returns a dec

--implicit
declare @myvar as Decimal(5,2)=3
select @myvar as myVar4
--explicit
select convert(decimal(5,2),3)/2 as myVar5
select cast(3 as decimal(5,2))/2 as myVar6
--select convert(decimal (5,2),1000) as myVar7
select CONVERT(int,12.345)+ convert(int,12.7) as myVar8
select convert(int,12.345+12.7) as myVar9

