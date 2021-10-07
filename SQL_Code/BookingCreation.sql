CREATE TABLE Booking (
	CustomerNr int FOREIGN KEY REFERENCES Customer(CustomerNr),
	ReserveId int FOREIGN KEY REFERENCES Reservation(ReserveId),

	StartDate datetime,
	EndDate datetime,
	PRIMARY KEY(CustomerNr, ReserveId)
);