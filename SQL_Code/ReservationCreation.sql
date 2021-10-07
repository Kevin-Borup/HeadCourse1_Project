CREATE TABLE Reservation (
	ReserveID int PRIMARY KEY IDENTITY(1,1),
	Adult tinyint,
	Child tinyint,
	Dog tinyint,
	CabinNumber tinyint FOREIGN KEY REFERENCES Cabin(Number),
	CampSiteNumber smallint FOREIGN KEY REFERENCES CampSite(Number),
	SeasonName varchar(24) FOREIGN KEY REFERENCES SeasonTicket(Item),
	PersonPriceName varchar(20),
	AddonPriceName varchar(30),
	OrderingPrice smallint
);