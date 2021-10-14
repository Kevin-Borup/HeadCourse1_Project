CREATE TABLE PriceOverView(
	ReserveId int FOREIGN KEY REFERENCES Reservation(ReserveId),
	PersonPriceValue smallint,
	SitePriceValue smallint,
	AddonPriceValue smallint,
	TotalPriceValue smallint,
	PRIMARY KEY(ReserveId)
	)