SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[RentalItem] (
	[RentalId] int NOT NULL,
	[ItemNumber] int NOT NULL,
	[MovieCopyId] int NOT NULL,
	CONSTRAINT [RentalItem_PK] PRIMARY KEY([RentalId], [ItemNumber]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [RentalItem_FK2] FOREIGN KEY ([MovieCopyId])
		REFERENCES [dbo].[MovieCopy] ([MovieCopyId])
	,
	CONSTRAINT [CK__RentalIte__ItemN__4AB81AF0] CHECK (([ItemNumber]>(0))),
	CONSTRAINT [CK__RentalIte__Renta__49C3F6B7] CHECK (([RentalId]>(0)))
) ON [PRIMARY]
CREATE INDEX [RentalItem_FK1]
 ON [dbo].[RentalItem] ([RentalId])
ON [PRIMARY]
CREATE INDEX [RentalItem_FK2]
 ON [dbo].[RentalItem] ([MovieCopyId])
ON [PRIMARY]