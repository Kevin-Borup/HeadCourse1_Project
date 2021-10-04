INSERT INTO CampSite VALUES (2, 0, 0, 1);


GO
BEGIN
	TRUNCATE TABLE [CampingPlads].[dbo].[CampSite]
	DECLARE @Number INT
	DECLARE @Size bit
	DECLARE @SeaView bit
	SET @Number=2
	WHILE (@Number<310)
		BEGIN
			SET @Size =
			CASE
				WHEN (@Number >= 72 AND @Number <= 80) OR (@Number >= 129 AND @Number <= 130) OR (@Number >= 161 AND @Number <= 174) OR (@Number >= 190 AND @Number <= 199) THEN 1
				ELSE 0
			END;
			--SET @SeaView =
			--CASE
			--	WHEN (@Number >= 72 AND @Number <= 80) OR (@Number >= 129 AND @Number <= 130) OR (@Number >= 161 AND @Number <= 174) OR (@Number >= 190 AND @Number <= 199) THEN 1
			--	ELSE 0
			--END;
			INSERT INTO [CampingPlads].[dbo].[CampSite]
			VALUES (@Number, @Size, @SeaView, 1)
			SET @Number = @Number+1
		END
END
