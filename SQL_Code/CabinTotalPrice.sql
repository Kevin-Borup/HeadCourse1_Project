-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin & Jannick
-- Create date: 04-10-21
-- Description:	Total price of Cabin reservation using OrderingCost
-- =============================================
CREATE FUNCTION CabinTotalPrice
(
	-- Add the parameters for the function here
	@ReserveId int,
	@CabinNumber tinyint
)
RETURNS smallint
AS
BEGIN
	-- Declare the return variable here
	DECLARE @TotalPrice int

	DECLARE @CabinName varchar(20)
	SELECT @CabinName = 
	CASE
		WHEN (SELECT Variant FROM Cabin WHERE Cabin.Number = @CabinNumber) = 0 THEN 'Cabin_Sta'
		ELSE 'Cabin_Lux'
	END;

	DECLARE @StartDate datetime
	DECLARE @EndDate datetime
	SELECT @StartDate = (SELECT Booking.StartDate FROM Booking WHERE Booking.ReserveId = @ReserveId);
	SELECT @EndDate = (SELECT Booking.EndDate FROM Booking WHERE Booking.ReserveId = @ReserveId);

	DECLARE @Season bit

	DECLARE @Days smallint
	SELECT @Days = DATEDIFF(day, @StartDate, @EndDate);

	SELECT @TotalPrice = 0
	WHILE(@StartDate <= @EndDate)
		SELECT @Season = 
		CASE
			WHEN '05-14' < @StartDate AND @StartDate > '08-15' THEN 1
			ELSE 0
		END;
		-- Add the T-SQL statements to compute the return value here
		SELECT @TotalPrice = @TotalPrice + (SELECT Price FROM OrderingCost WHERE OrderingCost.Item = @CabinName AND OrderingCost.ActiveSeason = @Season);
		SELECT @StartDate = @StartDate+1

	-- Return the result of the function
	RETURN @TotalPrice

END
GO

