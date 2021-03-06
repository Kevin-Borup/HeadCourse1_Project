USE [CampingPlads]
GO
/****** Object:  StoredProcedure [dbo].[InsertCustomerData]    Script Date: 06-10-2021 12:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 05/10-21
-- Description:	Inserts data from customers into the database
-- =============================================
CREATE PROCEDURE [dbo].[InsertReservation] 
	-- Add the parameters for the stored procedure here
	@FirstName varchar(50), 
	@LastName varchar(50),
	@Email varchar(50),
	@StreetName varchar(50),
	@BuildingNr smallint,
	@City varchar(50),
	@PostalCode smallint,
	@BirthDate datetime,
	@PhoneNr varchar(50),
	@StartDate datetime,
	@EndDate datetime,
	@Adult tinyint,
	@Child tinyint,
	@Dog tinyint,
	@CabinNumber tinyint,
	@CampSiteNumber smallint,
	@AddonPriceName varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @newCustomerNr int
	SELECT @newCustomerNr = (SELECT MAX(Customer.CustomerNr) FROM Customer) + 1;

	INSERT INTO Customer(
		FirstName,
		LastName,
		Email,
		StreetName,
		BuildingNr,
		City,
		PostalCode,
		BirthDate,
		PhoneNr)
		
	VALUES(
		@FirstName, 
		@LastName,
		@Email,
		@StreetName,
		@BuildingNr,
		@City,
		@PostalCode,
		@BirthDate,
		@PhoneNr)

	DECLARE @newReserveID int
	SELECT @newReserveID = (SELECT MAX(Reservation.ReserveID) FROM Reservation) + 1;


	INSERT INTO Reservation(
		Adult,
		Child,
		Dog,
		CabinNumber,
		CampSiteNumber,
		AddonPriceName)

	VALUES(
		@Adult,
		@Child,
		@Dog,
		@CabinNumber,
		@CampSiteNumber,
		@AddonPriceName)
		
	INSERT INTO Booking(
		CustomerNr,
		ReserveID,
		StartDate,
		EndDate
		)

	VALUES(
		@newCustomerNr,
		@newReserveID,
		@StartDate,
		@EndDate)
END
