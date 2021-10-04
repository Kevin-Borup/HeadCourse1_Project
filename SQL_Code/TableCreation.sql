CREATE TABLE Customer (
CustomerNr int PRIMARY KEY IDENTITY(1,1),
FirstName varchar,
LastName varchar,
Email varchar,
StreetName varchar,
BuildingNr smallint,
City varchar,
PostalCode smallint,
Age tinyint,
PhoneNr varchar(30),
)

CREATE TABLE SeasonTicket (
Item varchar PRIMARY KEY,
Price smallint
)

CREATE TABLE AddonCost (
Item varchar PRIMARY KEY,
Price smallint
)

CREATE TABLE OrderingCost (
Item varchar,
ActiveSeason bit,
Price smallint,
PRIMARY KEY(Item, ActiveSeason)
)
