SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MovieCopy] (
	[MovieCopyId] int NOT NULL,
	[CopyFormat] char(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__MovieCopy__CopyF__3A81B327] DEFAULT ('VHS'),
	[MovieId] int NOT NULL,
	[CopyCondition] char(3) COLLATE SQL_Latin1_General_CP1_CI_AS CONSTRAINT [DF__MovieCopy__CopyC__3B75D760] DEFAULT ('AVG'),
	CONSTRAINT [MovieCopy_PK] PRIMARY KEY([MovieCopyId]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [MovieCopy_FK] FOREIGN KEY ([MovieId])
		REFERENCES [dbo].[MovieTitle] ([MovieId])
	,
	CONSTRAINT [CK__MovieCopy__CopyC__3E52440B] CHECK (([CopyCondition]='OLD' OR [CopyCondition]='AVG' OR [CopyCondition]='NEW')),
	CONSTRAINT [CK__MovieCopy__CopyF__3D5E1FD2] CHECK (([CopyFormat]='VHS' OR [CopyFormat]='DVD')),
	CONSTRAINT [CK__MovieCopy__Movie__3C69FB99] CHECK (([MovieCopyId]>(0)))
) ON [PRIMARY]
CREATE INDEX [MovieCopy_FK]
 ON [dbo].[MovieCopy] ([MovieId])
ON [PRIMARY]
CREATE INDEX [MovieCopy_IE1]
 ON [dbo].[MovieCopy] ([CopyFormat])
ON [PRIMARY]
CREATE INDEX [MovieCopy_IE2]
 ON [dbo].[MovieCopy] ([CopyCondition])
ON [PRIMARY]