SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Customer] (
	[CustomerId] int NOT NULL,
	[FirstName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LastName] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Phone] char(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[City] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[State] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Zip] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BirthDate] date,
	[Gender] char(1) COLLATE SQL_Latin1_General_CP1_CI_AS,
	CONSTRAINT [Customer_PK] PRIMARY KEY([CustomerId]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [Customer_UK] UNIQUE([FirstName], [LastName], [Phone]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [CK__Customer__Custom__25869641] CHECK (([CustomerId]>(0))),
	CONSTRAINT [CK__Customer__Gender__24927208] CHECK (([Gender]='F' OR [Gender]='M'))
) ON [PRIMARY]
CREATE INDEX [Customer_IE1]
 ON [dbo].[Customer] ([LastName])
ON [PRIMARY]
CREATE INDEX [Customer_IE2]
 ON [dbo].[Customer] ([Phone])
ON [PRIMARY]
CREATE INDEX [Customer_IE3]
 ON [dbo].[Customer] ([Zip])
ON [PRIMARY]
CREATE INDEX [idx_Nonclustered_Customer_CustomerId]
 ON [dbo].[Customer] ([CustomerId])
ON [PRIMARY]