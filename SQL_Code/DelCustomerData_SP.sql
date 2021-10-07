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
-- Description:	Deletes Customer info from the database
-- =============================================
CREATE PROCEDURE DelCustomerData 
	-- Add the parameters for the stored procedure here
	@CustomerNr int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM Customer
	WHERE CustomerNr = @CustomerNr
END
GO
