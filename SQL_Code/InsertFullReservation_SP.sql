USE [CampingPlads]
GO
/****** Object:  StoredProcedure [dbo].[InsertReservation]    Script Date: 14-10-2021 13:04:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 05/10-21
-- Description:	Inserts data from customers into the database
-- =============================================
ALTER PROCEDURE [dbo].[InsertReservation] 
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
	@CabinNumber tinyint,
	@CampSiteNumber smallint,
	@CampType varchar(50),
	@SeasonName varchar(24) null,
	-- PriceOverview
	@PersonPriceValue smallint,
	@SitePriceValue smallint,
	@AddonPriceValue smallint,
	@TotalPriceValue smallint,
	-- AddonDetails
	@Dogs tinyint,
	@Bedding bit,
	@Cleaning bit,
	@Bike tinyint,
	@AdultWater tinyint,
	@ChildWater tinyint

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

	DECLARE @newReserveId int
	SELECT @newReserveId = (SELECT MAX(Reservation.ReserveID) FROM Reservation) + 1;


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
		Bedding,
		Cleaning,
		Bike,
		AdultWater,
		ChildWater
		)

	VALUES(
		@newReserveId,
		@Dogs,
		@Bedding,
		@Cleaning,
		@Bike,
		@AdultWater,
		@ChildWater
		)

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
