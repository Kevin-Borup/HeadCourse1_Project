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
-- Create date: 13-10-21
-- Description:	Returns the price of a cabin based on what type of cabin and the season
-- =============================================
CREATE PROCEDURE CabinTotalPrice 
	-- Add the parameters for the stored procedure here
	@CabinNr tinyint, 
	@StartDate date,
	@EndDate date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TotalPrice int
	
	DECLARE @Variant varchar(20)
	SELECT @Variant =
	CASE WHEN (SELECT Cabin.Variant FROM Cabin WHERE Cabin.Number = @CabinNr) = 0 THEN 'CabinB'
	ELSE 'CabinA'
	End;

	DECLARE @Season bit

	SELECT @TotalPrice = 0
	WHILE(@StartDate <= @EndDate)
		BEGIN
		SELECT @Season = 
		CASE
			WHEN '05-14' < @StartDate AND @StartDate > '08-15' THEN 1
			ELSE 0		
		END;

		SELECT @TotalPrice = @TotalPrice + 
		CASE 
		WHEN @Season = 1 THEN (SELECT OrderingCost.HSPrice FROM OrderingCost)
		ELSE (SELECT OrderingCost.LHPrice FROM OrderingCost)
		END;
	
	SELECT @TotalPrice
	END
END
