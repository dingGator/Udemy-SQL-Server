--initialize a variable , give it a data type and initial value
declare @myvar as numeric(7,2) =3
select @myvar +2 as myVariable1
select @myvar -2 as myVariable2
select @myvar *2 as myVariable3
select @myvar /2 as myVariable4
select power(@myvar,2) as myVariable5
select square(@myvar) as myVariable6
select power(@myvar,3) as myVariable7
select power(@myvar,.5) as myVariable8
select sqrt(@myvar) as myVariable9
go

declare @myvar2 as numeric(7,2) = 3.7
select floor(@myvar2) as myVariable10
select ceiling(@myvar2) as myVariable11
select round(@myvar2,0) as myVariable12



declare @myvar4 as numeric(7,2) = 12.345
select floor(@myvar4) as myVariable13
select ceiling(@myvar4) as myVariable14
select round(@myvar4,0) as myVariable15


declare @myvar5 as numeric(7,2) = 12.345
select floor(@myvar5) as myVariable16
select ceiling(@myvar5) as myVariable17
select round(@myvar5,1) as myVariable18


declare @myvar6 as numeric(7,2) = 12.344
select floor(@myvar6) as myVariable19
select ceiling(@myvar6) as myVariable20
select round(@myvar6,1) as myVariable21

declare @myvar7 as numeric(7,2) = -12.345
select floor(@myvar7) as myVariable22
select ceiling(@myvar7) as myVariable23
select round(@myvar7,1) as myVariable24

declare @myvar8 as numeric(7,2) = 12.345
select floor(@myvar8) as myVariable25
select ceiling(@myvar8) as myVariable26
select round(@myvar8,2) as myVariable27

declare @myvar9 as numeric(7,2) = 12.345
select floor(@myvar9) as myVariable28
select ceiling(@myvar9) as myVariable29
select round(@myvar9,-1) as myVariable30

select pi() as myPI
select exp(1) as my1e

declare @myvar10 as numeric(7,2) = 456
select abs(@myvar10) as myVariable31
select sign(@myvar10) as myVariable32


declare @myvar11 as numeric(7,2) = -456
select abs(@myvar11) as myVariable33
select sign(@myvar11) as myVariable34


declare @myvar12 as numeric(7,2) = 0
select abs(@myvar12) as myVariable35
select sign(@myvar12) as myVariable36


declare @myvar13 as numeric(7,2) = -1234.567
select abs(@myvar13) as myVariable37
select sign(@myvar13) as myVariable38

select rand(5678) as myVariable39

select round(748.56,0) as myquiz1
select ceiling(748.56) as myquiz2
select floor(748.56) as myquiz3
