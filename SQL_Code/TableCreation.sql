CREATE TABLE Customer (
CustomerNr int PRIMARY KEY IDENTITY(1,1),
FirstName varchar(50),
LastName varchar(50),
Email varchar(50),
StreetName varchar(50),
BuildingNr smallint,
City varchar(50),
PostalCode smallint,
BirthDate datetime,
PhoneNr varchar(30),
)

CREATE TABLE SeasonTicket (
Item varchar(24) PRIMARY KEY,
Price smallint
)

CREATE TABLE AddonCost (
Item varchar(30) PRIMARY KEY,
Price smallint
)

CREATE TABLE OrderingCost (
Item varchar(20),
ActiveSeason bit,
Price smallint,
PRIMARY KEY(Item, ActiveSeason)
)
