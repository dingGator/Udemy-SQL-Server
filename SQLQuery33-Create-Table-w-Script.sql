USE [70-461]
GO
--extra lines when create through scipting with existing table
--/****** Object:  Table [dbo].[tblEmployee]    Script Date: 6/25/2019 2:11:06 PM ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

CREATE TABLE [dbo].[tblEmployee](
	[EmployeeNumber] [int] NOT NULL,
	[EmployeeFirstName] [varchar](50) NOT NULL,
	[EmployeeMiddleName] [varchar](50) NULL,
	[EmployeeLastName] [varchar](50) NOT NULL,
	[EmploeeGovernmentID] [char](10) NULL,
	[DateOfBirth] [date] NOT NULL
) ON [PRIMARY]
GO


