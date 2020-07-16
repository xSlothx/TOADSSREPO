SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MovieTitle] (
	[MovieId] int NOT NULL,
	[Title] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Year] char(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] varchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CategoryId] int NOT NULL,
	[Duration] int,
	[Rating] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS,
	CONSTRAINT [MovieTitle_PK] PRIMARY KEY([MovieId]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [MovieTitle_UK] UNIQUE([Title], [Year]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [MovieTitle_FK] FOREIGN KEY ([CategoryId])
		REFERENCES [dbo].[MovieCategory] ([CategoryId])
	,
	CONSTRAINT [CK__MovieTitl__Categ__34C8D9D1] CHECK (([CategoryId]>(0))),
	CONSTRAINT [CK__MovieTitl__Durat__35BCFE0A] CHECK (([Duration]>(0))),
	CONSTRAINT [CK__MovieTitl__Movie__33D4B598] CHECK (([MovieId]>(0))),
	CONSTRAINT [CK__MovieTitl__Ratin__36B12243] CHECK (([Rating]='X' OR [Rating]='R' OR [Rating]='PG' OR [Rating]='G'))
) ON [PRIMARY]
CREATE INDEX [Movie_title_FK]
 ON [dbo].[MovieTitle] ([CategoryId])
ON [PRIMARY]
CREATE INDEX [MovieTitle_IE1]
 ON [dbo].[MovieTitle] ([Rating])
ON [PRIMARY]