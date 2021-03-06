USE [CampingPlads]
GO
/****** Object:  StoredProcedure [dbo].[AddonPriceTotal]    Script Date: 15-10-2021 10:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 14-10-21
-- Description:	Calculate total price of the addons
-- =============================================
ALTER PROCEDURE [dbo].[AddonPriceTotal] 
	-- Add the parameters for the stored procedure here
	@Dogs tinyint, 
	@BedLining bit,
	@Cleaning bit,
	@Bikes tinyint,
	@AdultWater tinyint,
	@ChildWater tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TotalPrice int = 0

	SELECT @TotalPrice = @TotalPrice + (@Dogs * (SELECT Price FROM AddonCost WHERE Item = 'Dog'))
	SELECT @TotalPrice = @TotalPrice + (@BedLining * (SELECT Price FROM AddonCost WHERE Item = 'BedLining'))
	SELECT @TotalPrice = @TotalPrice + (@Cleaning * (SELECT Price FROM AddonCost WHERE Item = 'Cleaning'))
	SELECT @TotalPrice = @TotalPrice + (@Bikes * (SELECT Price FROM AddonCost WHERE Item = 'BikeRental'))
	SELECT @TotalPrice = @TotalPrice + (@AdultWater * (SELECT Price FROM AddonCost WHERE Item = 'WaterWorld_Adult'))
	SELECT @TotalPrice = @TotalPrice + (@ChildWater * (SELECT Price FROM AddonCost WHERE Item = 'WaterWorld_Child'))

	RETURN @TotalPrice
END
