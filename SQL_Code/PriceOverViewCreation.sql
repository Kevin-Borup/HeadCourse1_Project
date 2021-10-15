CREATE TABLE PriceOverview(
	ReserveId int FOREIGN KEY REFERENCES Reservation(ReserveId),
	PersonPriceValue int,
	SitePriceValue int,
	AddonPriceValue int,
	TotalPriceValue int,
	PRIMARY KEY(ReserveId)
	)