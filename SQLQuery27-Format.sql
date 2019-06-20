select 'My number is ' + '4567' as my4567isAString
go

--if int add to string
--error msg
--Conversion failed when converting
--the varchar value 'My number is ' to data type int.

-- due to precedence it fails 
--becase it try to convert --nvarchar to int--implicitly

--select 'My number is ' + 4567 as my4567isAnInt
--go


--explicit conversion
select 'My number is '
	+ convert(varchar(20),4567)
	as my4567Convert
go

select 'My number is '
	+ cast(4567 as varchar(20))
	as my4567Cast
go

select 'My salary is '
	+ convert(varchar(20),2345.6 ) --works but not well
	as my4567Convert
go


--convert explicitly
--look up
--Standard Numeric Format Strings
select 'My salary is '
	+ format(2345.6,'C','en-GB' ) 
	as my2345Format
go

select 'My salary is '
	+ format(2345.6,'C','fr-FR')
	as my23456Format
go


