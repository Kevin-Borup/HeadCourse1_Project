USE [CampingPlads]
GO
/****** Object:  StoredProcedure [dbo].[PersonPriceTotal]    Script Date: 14-10-2021 20:50:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 14-10-21
-- Description:	Calculate the total price of the added amount of people
-- =============================================
ALTER PROCEDURE [dbo].[PersonPriceTotal] 
	-- Add the parameters for the stored procedure here
	@Adults tinyint = 0, 
	@Children tinyint = 0,
	@StartDate date,
	@EndDate date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TotalPrice smallint

	DECLARE @Season bit

	SELECT @TotalPrice = 0
	WHILE(@StartDate <= @EndDate)
		BEGIN
		SELECT @Season = 
			CASE WHEN '05-14' < @StartDate AND @StartDate > '08-15' THEN 1
			ELSE 0		
			END;

		SELECT @TotalPrice = @TotalPrice + ( @Adults *
			CASE WHEN @Season = 1 THEN (SELECT OrderingCost.HSPrice FROM OrderingCost WHERE Item = 'Adult')
			ELSE (SELECT OrderingCost.LHPrice FROM OrderingCost WHERE Item = 'Adult')
			END);

		SELECT @TotalPrice = @TotalPrice + ( @Children *
			CASE WHEN @Season = 1 THEN (SELECT OrderingCost.HSPrice FROM OrderingCost WHERE Item = 'Child')
			ELSE (SELECT OrderingCost.LHPrice FROM OrderingCost WHERE Item = 'Child')
			END);
	
	RETURN @TotalPrice
	END
END
