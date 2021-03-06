USE [CampingPlads]
GO
/****** Object:  StoredProcedure [dbo].[InsertFullReservation]    Script Date: 15-10-2021 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 05/10-21
-- Description:	Inserts data from customers into the database
-- =============================================
ALTER PROCEDURE [dbo].[InsertFullReservation] 
	-- Add the parameters for the stored procedure here
	-- Customer
	@FirstName varchar(50), 
	@LastName varchar(50),
	@Email varchar(50),
	@PhoneNr varchar(50),
	@BirthDate datetime,
	@StreetName varchar(50),
	@BuildingNr smallint,
	@City varchar(50),
	@PostalCode smallint,
	-- Booking
	@StartDate datetime,
	@EndDate datetime,
	-- Reservation
	@Adult tinyint,
	@Child tinyint,
	@CabinNumber tinyint = null,
	@CampSiteNumber smallint = null,
	@CampType varchar(50),
	@SeasonName varchar(24) = null,
	-- AddonDetails
	@Dogs tinyint,
	@BedLining bit,
	@Cleaning bit,
	@Bike tinyint,
	@AdultWater tinyint,
	@ChildWater tinyint,
	-- Output Parameters
	@newCustomerNr int = null OUTPUT,
	@newReserveId int = null OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	-- SELECT @newCustomerNr = (SELECT MAX(Customer.CustomerNr) FROM Customer) + 1;
	-- SELECT @newReserveId = (SELECT MAX(Reservation.ReserveID) FROM Reservation) + 1;


	INSERT INTO Customer(
		FirstName,
		LastName,
		Email,
		StreetName,
		BuildingNr,
		City,
		PostalCode,
		BirthDate,
		PhoneNr
		)
		
	VALUES(
		@FirstName, 
		@LastName,
		@Email,
		@StreetName,
		@BuildingNr,
		@City,
		@PostalCode,
		@BirthDate,
		@PhoneNr
		)

	SELECT @newCustomerNr = SCOPE_IDENTITY();

	INSERT INTO Reservation(
		Adult,
		Child,
		CabinNumber,
		CampType,
		CampSiteNumber,
		SeasonName,
		Arrived 
		)

	VALUES(
		@Adult,
		@Child,
		@CabinNumber,
		@CampType,
		@CampSiteNumber,
		@SeasonName,
		0
		)
		
	SELECT @newReserveId = SCOPE_IDENTITY();

	SET IDENTITY_INSERT dbo.Booking ON;  

	INSERT INTO Booking(
		CustomerNr,
		ReserveID,
		StartDate,
		EndDate
		)

	VALUES(
		@newCustomerNr,
		@newReserveId,
		@StartDate,
		@EndDate
		)

	INSERT INTO Addon(
		ReserveId,
		Dogs,
		BedLining,
		Cleaning,
		Bike,
		AdultWater,
		ChildWater
		)

	VALUES(
		@newReserveId,
		@Dogs,
		@BedLining,
		@Cleaning,
		@Bike,
		@AdultWater,
		@ChildWater
		)


	DECLARE @PersonPriceValue int
	DECLARE @SitePriceValue int
	DECLARE @AddonPriceValue int
	DECLARE @TotalPriceValue int

	EXECUTE @PersonPriceValue = CampingPlads.dbo.PersonPriceTotal @Adult, @Child, @StartDate, @EndDate;
	EXECUTE @SitePriceValue = CampingPlads.dbo.SitePriceTotal @CampType, @StartDate, @EndDate;
	EXECUTE @AddonPriceValue = CampingPlads.dbo.AddonPriceTotal @Dogs, @BedLining, @Cleaning, @Bike, @AdultWater, @ChildWater;
	IF @SeasonName = ''
		SELECT @TotalPriceValue = @PersonPriceValue + @SitePriceValue + @AddonPriceValue
	ELSE
		SELECT @TotalPriceValue = @AddonPriceValue + (SELECT Price FROM SeasonTicket WHERE Item = @SeasonName)

	INSERT INTO PriceOverView(
		ReserveId,
		PersonPriceValue,
		SitePriceValue,
		AddonPriceValue,
		TotalPriceValue
		)

	VALUES(
		@newReserveId,
		@PersonPriceValue,
		@SitePriceValue,
		@AddonPriceValue,
		@TotalPriceValue
		)

END
