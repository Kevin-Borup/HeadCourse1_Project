CREATE TABLE Addon (
	ReserveId int FOREIGN KEY REFERENCES Reservation(ReserveId),
	Dogs tinyint,
	Bedding bit,
	Cleaning bit,
	Bike tinyint,
	AdultWater tinyint,
	ChildWater tinyint
	PRIMARY KEY(ReserveId)
)
