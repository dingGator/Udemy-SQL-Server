USE [70-461]
GO

/****** Object:  Table [dbo].[tblEmployee]    Script Date: 6/25/2019 2:53:27 PM ******/
DROP TABLE [dbo].[tblEmployee]
GO

/****** Object:  Table [dbo].[tblEmployee]    Script Date: 6/25/2019 2:53:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblEmployee](
	[EmployeeNumber] [int] NOT NULL,
	[EmployeeFirstName] [varchar](50) NOT NULL,
	[EmployeeMiddleName] [varchar](50) NULL,
	[EmployeeLastName] [varchar](50) NOT NULL,
	[EmploeeGovernmentID] [char](10) NULL,
	[DateOfBirth] [date] NOT NULL,
	[Department] [varchar](30) NULL
) ON [PRIMARY]
GO


