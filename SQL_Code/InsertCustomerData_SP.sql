-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 05/10-21
-- Description:	Inserts data from customers into the database
-- =============================================
CREATE PROCEDURE InsertCustomerData 
	-- Add the parameters for the stored procedure here
	@FirstName varchar(50), 
	@LastName varchar(50),
	@Email varchar(50),
	@StreetName varchar(50),
	@BuildingNr smallint,
	@City varchar(50),
	@PostalCode smallint,
	@BirthDate datetime,
	@PhoneNr varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
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
END
GO
