
-- Practice Activity 5
select [name] as myGivenPract5
from sys.all_columns

--1. Add the letter A to the end of each name.
select [name] +'A' as my1Pract5 
from sys.all_columns

--2. Add the letter Ⱥ to the end of each name

select convert(nvarchar(20),[name]) 
		+ N'Ⱥ' as my2Pract5 
from sys.all_columns

--3. Remove the first character from name.

select SUBSTRING([name],2,len([name])-1) as my3Practice5
from sys.all_columns


--4. Remove the last original character from name.

select substring([name],1, (len([name])-1)) as my4Practice5 
		from sys.all_columns

