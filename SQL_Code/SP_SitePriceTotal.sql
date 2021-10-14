USE [CampingPlads]
GO
/****** Object:  StoredProcedure [dbo].[SitePriceTotal]    Script Date: 14-10-2021 20:49:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 13-10-21
-- Description:	Returns the price of a cabin based on what type of cabin and the season
-- =============================================
ALTER PROCEDURE [dbo].[SitePriceTotal] 
	-- Add the parameters for the stored procedure here
	@SiteType varchar(20), 
	@StartDate date,
	@EndDate date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TotalPrice int

	DECLARE @Season bit

	SELECT @TotalPrice = 0
	WHILE(@StartDate <= @EndDate)
		BEGIN
		SELECT @Season = 
			CASE WHEN '05-14' < @StartDate AND @StartDate > '08-15' THEN 1
			ELSE 0		
		END;

		SELECT @TotalPrice = @TotalPrice + 
			CASE WHEN @Season = 1 THEN (SELECT OrderingCost.HSPrice FROM OrderingCost WHERE Item = @SiteType)
			ELSE (SELECT OrderingCost.LHPrice FROM OrderingCost WHERE Item = @SiteType)
		END;
	
	RETURN @TotalPrice
	END
END
