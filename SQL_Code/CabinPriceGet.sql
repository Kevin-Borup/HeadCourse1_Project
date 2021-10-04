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
-- Description:	Gets price of Cabin from OrderingDate
-- =============================================
CREATE FUNCTION CabinPriceGet 
(
	-- Add the parameters for the function here
	@Variant bit
)
RETURNS smallint
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result smallint

	DECLARE @Season bit
	SELECT @Season = 0
	--CASE
	--	WHEN Booking.EndDate - Booking.StartDate= 
	--	ELSE 0
	--END;


	DECLARE @CabinName varchar(20)
	SELECT @CabinName = 
	CASE
		WHEN @Variant = 0 THEN 'Cabin_Sta'
		ELSE 'Cabin_Lux'
	END;

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = (SELECT Price FROM OrderingCost WHERE OrderingCost.Item = @CabinName AND OrderingCost.ActiveSeason = @Season);

	-- Return the result of the function
	RETURN @Result

END
GO

