USE [CampingPlads]
GO
/****** Object:  StoredProcedure [dbo].[GetAvailableSites]    Script Date: 15-10-2021 08:11:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jannick & Kevin
-- Create date: 14-10-21
-- Description:	Find available sites
-- =============================================
ALTER PROCEDURE [dbo].[GetAvailableSites] 
	-- Add the parameters for the stored procedure here
	@SiteType varchar(50),
	@StartDate datetime,
	@EndDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @CabinVariant bit = 0
	IF @SiteType = 'CabinA' SELECT @CabinVariant = 1

    -- Insert statements for procedure here
	IF (@SiteType LIKE 'Cabin%')

		SELECT Number FROM Cabin WHERE  
			Cabin.Variant = @CabinVariant
			AND Number NOT IN 
			(SELECT CabinNumber 
			FROM Reservation
			JOIN Booking 
			ON Reservation.ReserveID = Booking.ReserveId 
			WHERE (Booking.StartDate BETWEEN @StartDate AND @EndDate)
			OR (Booking.EndDate BETWEEN @StartDate AND @EndDate))

	ELSE IF @SiteType = 'Tent'
		SELECT Number FROM CampSite WHERE Size = 0 AND Number NOT IN 
			(SELECT CampSiteNumber 
			FROM Reservation
			JOIN Booking 
			ON Reservation.ReserveID = Booking.ReserveId 
			WHERE (Booking.StartDate BETWEEN @StartDate AND @EndDate)
			OR (Booking.EndDate BETWEEN @StartDate AND @EndDate))
		
	ELSE
		SELECT Number FROM CampSite WHERE Number NOT IN 
			(SELECT CampSiteNumber 
			FROM Reservation
			JOIN Booking 
			ON Reservation.ReserveID = Booking.ReserveId 
			WHERE (Booking.StartDate BETWEEN @StartDate AND @EndDate)
			OR (Booking.EndDate BETWEEN @StartDate AND @EndDate))
		
END
