SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MovieCategory] (
	[CategoryId] int NOT NULL,
	[CategoryName] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RentalPrice] money NOT NULL,
	CONSTRAINT [MovieCategory_PK] PRIMARY KEY([CategoryId]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [MovieCategory_UK] UNIQUE([CategoryName]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [CK__MovieCate__Categ__2F10007B] CHECK (([CategoryId]>(0))),
	CONSTRAINT [CK__MovieCate__Renta__300424B4] CHECK (([RentalPrice]>(0)))
) ON [PRIMARY]