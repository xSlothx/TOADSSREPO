SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MovieRental] (
	[RentalId] int NOT NULL,
	[RentalDate] date NOT NULL,
	[DueDate] date NOT NULL,
	[TotalCharge] money NOT NULL,
	[CustomerId] int NOT NULL,
	[EmployeeId] int NOT NULL,
	CONSTRAINT [MovieRental_PK] PRIMARY KEY([RentalId]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [MovieRental_FK1] FOREIGN KEY ([CustomerId])
		REFERENCES [dbo].[Customer] ([CustomerId])
	,
	CONSTRAINT [MovieRental_FK2] FOREIGN KEY ([EmployeeId])
		REFERENCES [dbo].[Employee] ([EmployeeId])
	,
	CONSTRAINT [CK__MovieRent__Custo__4316F928] CHECK (([CustomerId]>(0))),
	CONSTRAINT [CK__MovieRent__Emplo__440B1D61] CHECK (([EmployeeId]>(0))),
	CONSTRAINT [CK__MovieRent__Renta__4222D4EF] CHECK (([RentalId]>(0))),
	CONSTRAINT [CK__MovieRent__Total__44FF419A] CHECK (([TotalCharge]>(0)))
) ON [PRIMARY]
CREATE INDEX [MovieRental_FK1]
 ON [dbo].[MovieRental] ([CustomerId])
ON [PRIMARY]
CREATE INDEX [MovieRental_FK2]
 ON [dbo].[MovieRental] ([EmployeeId])
ON [PRIMARY]
CREATE INDEX [MovieRental_IE1]
 ON [dbo].[MovieRental] ([RentalDate])
ON [PRIMARY]
CREATE INDEX [MovieRental_IE2]
 ON [dbo].[MovieRental] ([DueDate])
ON [PRIMARY]