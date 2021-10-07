USE [CampingPlads]
GO
/****** Object:  UserDefinedFunction [dbo].[CabinTotalPrice]    Script Date: 05-10-2021 08:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin & Jannick
-- Create date: 04-10-21
-- Description:	Total price of Cabin reservation using OrderingCost
-- =============================================
ALTER FUNCTION [dbo].[CabinTotalPrice]
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
