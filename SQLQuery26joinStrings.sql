declare @firstname as nvarchar(20)
declare @middlename as nvarchar(20)
declare @lastname as nvarchar(20)

set @firstname ='John'
set @middlename ='Walker'
set @lastname ='Smith'


select @firstname 
		+ @middlename 
		+ @lastname 
		as FullName1

select @firstname +' '
		+ @middlename +' ' 
		+ @lastname +' '
		as FullNameWSpace1


declare @firstname1 as nvarchar(20)
declare @middlename1 as nvarchar(20)
declare @lastname1 as nvarchar(20)

--   if @middlename is not set
-- then anything add to NULL is NULL

set @firstname1 ='Sarah'
set @lastname1 ='Milligan'

select @firstname1 
		+ @middlename1 
		+ @lastname1 
		as FullName2

select @firstname1 
	 + IIF (@middlename1 is null ,'', ' '+ @middlename1)
	 +' '+ @lastname1 
	 as FullNameNoMIdName2

select @firstname1 
	 + CASE WHEN @middlename1 is null  
	 then ''
	 else ' '+ @middlename1 
	 end
	 +' '+ @lastname1 
	 as FullNameCaseWhen2

-- two spaces between first and last name
select @firstname1 + ' '
	 + coalesce (@middlename1 ,'')  
	 +' '+ @lastname1 
	 as FullNameCoalese2

--so to have only one space 
--between first and last name

select @firstname1 
	 + coalesce (' '+ @middlename1 ,'')  
	 +' '+ @lastname1 
	 as FullNameCoalese2

--CONCAT
--is how to join --potentially NULL string 
--to join together

select concat(@firstname1, 
		' ', @middlename1,
		' ' ,@lastname1) 
	 as FullNameConcat2



set @firstname1 ='Sarah'
set @middlename1 ='Jane'
set @lastname1 ='Milligan'

select @firstname1 
	 + IIF (@middlename1 is null ,'', ' '+ @middlename1)
	 +' '+ @lastname1 
	 as FullNameWithMid3

select @firstname1 
	 + CASE WHEN @middlename1 is null  
	 then ''
	 else ' '+ @middlename1 
	 end
	 +' '+ @lastname1 
	 as FullNameCaseWhen3


--coalesce works with three names as well
select @firstname1 +' '
	 + coalesce (@middlename1 ,'')  
	 +' '+ @lastname1 
	 as FullNameCoalesce3

select @firstname1 
	 + coalesce (' '+ @middlename1 ,'')  
	 +' '+ @lastname1 
	 as FullNameCoalese3

select concat(@firstname1, 
		' ', @middlename1,
		' ' ,@lastname1) 
	 as FullNameConcat3




