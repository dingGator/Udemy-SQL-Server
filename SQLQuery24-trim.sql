----varchar(max)      1- 8000 char
----nvarchar(max)     2G   gigabytes
--ntext  text       do not use


-----  extraction
declare @myASC as varchar(10)     = '  hello   '
declare @myUNI as nvarchar(10)   = N'helloʡ'
declare @mySpUNI as nvarchar(13) = N'   hell0ʡ1   '
declare @myUpperSpUNI as nvarchar(13) = N'   HELL0ʡ1   '
--  
select @myASC as myVcASC,
		len(@myASC) as myASCLen1, 
		datalength(@myASC) as myASCDLen1

select	@myASC as myVcASC,
		left(@myASC,4) as my4LASC,		
		len(left(@myASC,4)) as my4LASCLen1, 
		datalength(left(@myASC,4))as my4LASCDLen1

SELECT	@myASC as myVcASC,
		right(@myASC,4) as my4RASC,
		len(right(@myASC,4)) as my4RASCLen1, 
		datalength(right(@myASC,4)) as my4RASCDLen1

select	@myUNI as myNvcUNI,
		len(@myUNI) as myUNILen2, 
		datalength(@myUNI) as myUNIDLen2
		
select	@myUNI as myNvcUNI,
		right(@myUNI,2) as myRUNI,		
		len(right(@myUNI,2)) as myRUNILen2, 
		datalength(right(@myUNI,2)) as myRUNIDLen2

select	@myUNI as myNvcUNI,
		left(@myUNI,2) as myLUNI,		
		len(left(@myUNI,2)) as myLUNILen2, 
		datalength(left(@myUNI,2)) as myLUNIDLen2
--


select	@mySpUNI as mySpNvcUNI,
		len (@mySpUNI) as mySpUNILen2, 
		datalength(@mySpUNI) as mySpDLen2

select	@mySpUNI as mySpNvcUNI,
		right(@mySpUNI,4) as myRSpUNI,	
		len (right(@mySpUNI,4)) as myRSpUNILen2, 
		datalength (right(@mySpUNI,4)) as myRSpDLen2

select	@mySpUNI as mySpNvcUNI,
		left(@mySpUNI,4) as myLSpUNI,	
		len (left(@mySpUNI,4)) as myLSpUNILen2, 
		datalength (left(@mySpUNI,4)) as myLSpDLen2

select @myASC as myVcASC,
		substring(@myASC,3,2) as mySubs3s2cASC,
		len(substring(@myASC,3,2)) as mySubs3s2cASCLen2, 
		datalength(substring(@myASC,3,2)) as mySubs3s2cASCDLen2

select	@myUNI as myNvcUNI,
		substring(@myUNI,3,2) as mySubs3s2cUNI,	
		len (substring(@myUNI,3,2)) as mySubs3s2cUNILen2, 
		datalength (substring(@myUNI,3,2)) as mySubs3s2cUNIDLen2

select	@mySpUNI as mySpNvcUNI,
		substring(@mySpUNI,3,2) as mySubs4s2cSpUNI,	
		len (substring(@mySpUNI,3,2)) as mySubs4s2cSpUNILen2, 
		datalength (substring(@mySpUNI,3,2)) as mySubs4s2cSpUNIDLen2

select @myASC as myVcASC,
		ltrim(@myASC) as myLTrimASC, 
		len(ltrim(@myASC)) as myLTrimASCLen3,
		datalength(ltrim(@myASC)) as myLTrimASCDLen2

select @myASC as myVcASC,
		rtrim(@myASC) as myRTrimASC, 
		len(rtrim(@myASC)) as myRTrimASCLen2,
		datalength(rtrim(@myASC)) as myRTrimASCDLen2


select @myASC as myVcASC,
		ltrim(rtrim(@myASC)) as myLTTrimASC, 
		len(ltrim(rtrim(@myASC))) as myLRTrimASCLen2,
		datalength(ltrim(rtrim(@myASC))) as myRTrimASCDLen2


select @myASC as myVcASC,
		replace(@myASC,'l','L') as myReplASC, 
		len(replace(@myASC,'l','L')) as myReplASCLen2,
		datalength(replace(@myASC,'l','L')) as myReplASCDLen2

select @myASC as myVcASC,
		upper(@myASC) as myUpperASC, 
		len(upper(@myASC)) as myUpperASCLen2,
		datalength(upper(@myASC)) as myUpperASCLen2

select	@myUNI as myNvcUNI,
		ltrim(@myUNI) as myLTrimUNI,	
		len (ltrim(@myUNI)) as myLTrimUNILen2, 
		datalength (ltrim(@myUNI)) as myLtrimUNIDLen2

select	@myUNI as myNvcUNI,
		rtrim(@myUNI) as myRTrimUNI,	
		len (rtrim(@myUNI)) as myRTrimUNILen2, 
		datalength (rtrim(@myUNI)) as myRtrimUNIDLen2

select @myUNI as myVcUNI,
		ltrim(rtrim(@myUNI)) as myLTTrimUNI, 
		len(ltrim(rtrim(@myUNI))) as myLRTrimUNILen2,
		datalength(ltrim(rtrim(@myUNI))) as myRTrimUNIDLen2

select @myUNI as myVcUNI,
		upper(@myUNI) as myUpperUNI, 
		len(upper(@myUNI)) as myUpperUNILen2,
		datalength(upper(@myUNI)) as myUpperUNILen2

select @myUNI as myVcUni,
		replace(@myUNI,'l','L') as myReplUNI, 
		len(replace(@myUNI,'l','L')) as myReplUNILen2,
		datalength(replace(@myUNI,'l','L')) as myReplUNILen2

select	@mySpUNI as myNvcSpUNI,
		ltrim(@mySpUNI) as myLTrimSpUNI,	
		len (ltrim(@mySpUNI)) as myLTrimSpUNILen2, 
		datalength (ltrim(@mySpUNI)) as myLtrimSpUNIDLen2

select	@mySpUNI as myNvcSpUNI,
		rtrim(@mySpUNI) as myRTrimSpUNI,	
		len (rtrim(@mySpUNI)) as myRTrimSpUNILen2, 
		datalength (rtrim(@mySpUNI)) as myRtrimSpUNIDLen2

select @mySpUNI as myVcSpUNI,
		ltrim(rtrim(@mySpUNI)) as myLTTrimSpUNI, 
		len(ltrim(rtrim(@mySpUNI))) as myLRTrimSpUNILen2,
		datalength(ltrim(rtrim(@mySpUNI))) as myRTrimSpUNIDLen2

select @mySpUNI as myVcSpUni,
		replace(@mySpUNI,'l','L') as myReplSpUNI, 
		len(replace(@mySpUNI,'l','L')) as myReplSpUNILen2,
		datalength(replace(@mySpUNI,'l','L')) as myReplSpUNILen2

select @mySpUNI as myVcSpUni,
		upper(@mySpUNI) as myUpperSpUNI,
		len(upper(@mySpUNI)) as myUpperSpUNILen2,
		datalength(upper(@mySpUNI)) as myUpperSpUNILen2

		
select @myUpperSpUNI as myUpperSpUNI,
		lower(@myUpperSpUNI) as myLowerSpUNI, 
		len(lower(@myUpperSpUNI)) as myLowerSpUNILen2,
		datalength(lower(@myUpperSpUNI)) as myLowerSpUNILen2
