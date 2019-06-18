--String 

--char      --ASCII       1-byte
--varchar   --ASCII       1-byte
--nchar     --UNICORE     2-bytes
--nvarchar  --UNICORE     2-bytes
--number 


--convert A-Z, a-z, 0-9
--ASCII
--UNICORE

declare @myCharacters as char(10)
set @myCharacters ='hello'
select @myCharacters as myChar
go

--length
declare @myCharacters as char(10)
set @myCharacters ='hello'
select @myCharacters as myCharString, len(@myCharacters) as myLength1
go
--datalength-- how many bytes to store
declare @myCharacters as char(10)
set @myCharacters ='hello'
select @myCharacters as myCharString2, 
len(@myCharacters) as myLength2, 
datalength(@myCharacters) as myDataLength2
go


declare @myCharacters as char(10)
set @myCharacters ='hellother'
select @myCharacters as my9CharString3, 
len(@myCharacters) as myLength3, 
datalength(@myCharacters) as myDataLength3
go

--if variable has 11 characters in char (10) then --
-- it curtails to 10 character
declare @myCharacters as char(10)
set @myCharacters ='hellothereEX'
select @myCharacters as my12CharString4, 
len(@myCharacters) as myLength4, 
datalength(@myCharacters) as myDataLength4
go

-- if have zero characters
declare @myCharacters as char(10)
set @myCharacters =''
select @myCharacters as my0CharString5, 
len(@myCharacters) as myLength5, 
datalength(@myCharacters) as myDataLength5
go
--use varchar for empty string variables
-- take 2 bytes for varchar for empty
declare @myCharacters as varchar(10)
set @myCharacters =''
select @myCharacters as my0VarcharString6, 
len(@myCharacters) as myLength6, 
datalength(@myCharacters) as myDataLength6
go
--unicore character takes 2 bytes to store
declare @myCharacters as nchar(10)
set @myCharacters =''
select @myCharacters as my0NcharString7, 
len(@myCharacters) as myLength7, 
datalength(@myCharacters) as myDataLength7
go
-- nvarchar
declare @myCharacters as nvarchar(10)
set @myCharacters =''
select @myCharacters as my0NvarcharString8, 
len(@myCharacters) as myLength8, 
datalength(@myCharacters) as myDataLength8
go
declare @myCharacters as nchar(10)
set @myCharacters ='hello'
select @myCharacters as myNcharString9, 
len(@myCharacters) as myLength9, 
datalength(@myCharacters) as myDataLength9
go
declare @myCharacters as varchar(10)
set @myCharacters ='hellothereEX'
select @myCharacters as my12VarcharString10, 
len(@myCharacters) as myLength10, 
datalength(@myCharacters) as myDataLength10
go
declare @myCharacters as nvarchar(10)
set @myCharacters ='hellothe'
select @myCharacters as my8NvarcharString11, 
len(@myCharacters) as myLength11, 
datalength(@myCharacters) as myDataLength11
go
declare @myCharacters as varchar(10)
set @myCharacters ='helloջ'
select @myCharacters as mySpeVarcharString12, 
len(@myCharacters) as myLength12, 
datalength(@myCharacters) as myDataLength12
go
declare @myCharacters as nvarchar(10)
set @myCharacters ='helloջ'
select @myCharacters as mySpeNvarcharString13, 
len(@myCharacters) as myLength13, 
datalength(@myCharacters) as myDataLength13
go
declare @myCharacters as char(10)
set @myCharacters ='helloջ'
select @myCharacters as mySpeCharString14, 
len(@myCharacters) as myLength14, 
datalength(@myCharacters) as myDataLength14
go
declare @myCharacters as nvarchar(10)
set @myCharacters ='hellothereEX'
select @myCharacters as my12NVarcharString15, 
len(@myCharacters) as myLength15, 
datalength(@myCharacters) as myDataLength15
go
declare @myCharacters as varchar(10)
set @myCharacters ='hellothe'
select @myCharacters as my8VarcharString16, 
len(@myCharacters) as myLength16, 
datalength(@myCharacters) as myDataLength16
go
declare @myCharacters as nvarchar(10)
set @myCharacters =N'helloջ'
select @myCharacters as mySpeVarcharString17, 
len(@myCharacters) as myLength17, 
datalength(@myCharacters) as myDataLength17
go
