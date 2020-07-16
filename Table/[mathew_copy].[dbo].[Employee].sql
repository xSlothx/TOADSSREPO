SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Employee] (
	[EmployeeId] int NOT NULL,
	[FirstName] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LastName] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SSN] char(9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Phone] char(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[City] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[State] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Zip] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BirthDate] date NOT NULL,
	[Gender] char(1) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[HireDate] date,
	CONSTRAINT [Employee_PK] PRIMARY KEY([EmployeeId]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [Employee_UK1] UNIQUE([FirstName], [LastName], [Phone]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [Employee_UK2] UNIQUE([SSN]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [CK__Employee__Employ__2A4B4B5E] CHECK (([EmployeeId]>(0))),
	CONSTRAINT [CK__Employee__Gender__2B3F6F97] CHECK (([Gender]='F' OR [Gender]='M'))
) ON [PRIMARY]
CREATE INDEX [Employee_IE1]
 ON [dbo].[Employee] ([LastName])
ON [PRIMARY]
CREATE INDEX [Employee_IE2]
 ON [dbo].[Employee] ([Phone])
ON [PRIMARY]
CREATE INDEX [Employee_IE3]
 ON [dbo].[Employee] ([Zip])
ON [PRIMARY]