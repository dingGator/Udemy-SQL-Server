----varchar(max)      1- 8000 char
----nvarchar(max)     2G   gigabytes
--ntext  text       do not use


-----  extraction
declare @myASCII as varchar(10) = '  hello  '
declare @myUNICODE as nvarchar(10) = N'helloʡ'
declare @mySpaceUNICODE as nvarchar(10) = N'  helloʡ  '
--  
select @myASCII as myVarcharASCII,
		len(@myASCII) as myASCIILength1, 
		datalength(@myASCII) as myASCIIDataLength1

select	@myASCII as myVarcharASCII,
		left(@myASCII,4) as my4LeftASCII,		
		len(left(@myASCII,4)) as my4LASCIILength1, 
		datalength(Left(@myASCII,4))as my4LASCIIDataLength1

SELECT	@myASCII as myVarcharASCII,
		right(@myASCII,4) as my4RightASCII,
		len(right(@myASCII,4)) as my4RASCIILength1, 
		datalength(right(@myASCII,4)) as my4RASCIIDataLength1

select	@myUNICODE as myNvarcharUNICODE,
		len(@myUNICODE) as myUNICODELength2, 
		datalength(@myUNICODE) as myUNICODEDataLength2
		
select	@myUNICODE as myNvarcharUNICODE,
		right(@myUNICODE,2) as myRightUNICODE,		
		len(right(@myUNICODE,2)) as myRUNICODELength2, 
		datalength(right(@myUNICODE,2)) as myRUNICODEDataLength2

select	@myUNICODE as myNvarcharUNICODE,
		left(@myUNICODE,2) as myLeftUNICODE,		
		len(left(@myUNICODE,2)) as myLUNICODELength2, 
		datalength(left(@myUNICODE,2)) as myLUNICODEDataLength2
--
select @myASCII as myVarcharASCII,
		substring(@myASCII,3,2) as substring3s2cASCII,
		len(substring(@myASCII,3,2)) as mySubstring3s2cLength2, 
		datalength(substring(@myASCII,3,2)) as mySubstring3s2cDataLength2

select @myASCII as myVarcharASCII,
		ltrim(@myASCII) as mylTrim, 
		len(ltrim(@myASCII)) as myLTrimLength3,
		datalength(ltrim(@myASCII)) as myLTrimDataLength2

select @myASCII as myVarcharASCII,
		rtrim(@myASCII) as myrTrim, 
		len(rtrim(@myASCII)) as myRTrimLength2,
		datalength(rtrim(@myASCII)) as myRTrimDataLength2

select @myASCII as myVarcharASCII,
		ltrim(rtrim(@myASCII)) as myLTTrim, 
		len(ltrim(rtrim(@myASCII))) as myLRTrimLength2,
		datalength(ltrim(rtrim(@myASCII))) as myRTrimDataLength2