BEGIN
	DECLARE @Number INT
	DECLARE @Size bit
	DECLARE @SeaView bit
	SET @Number=2
	WHILE (@Number<310)
		BEGIN
			SET @Size =
			CASE
				WHEN (@Number >= 72 AND @Number <= 80)
				OR (@Number >= 129 AND @Number <= 130)
				OR (@Number >= 161 AND @Number <= 174)
				OR (@Number >= 190 AND @Number <= 199) 
				THEN 1
				ELSE 0
			END;
			SET @SeaView =
			CASE
				WHEN (@Number >= 51 AND @Number <= 80)
				OR (@Number >= 128 AND @Number <= 130)
				OR @Number = 133
				OR (@Number >= 135 AND @Number <= 138)
				OR (@Number >= 140 AND @Number <= 142)
				OR (@Number >= 144 AND @Number <= 148)
				OR (@Number >= 165 AND @Number <= 169)
				OR (@Number >= 190 AND @Number <= 199)
				OR (@Number >= 300 AND @Number <= 309)
				THEN 1
				ELSE 0
			END;
			INSERT INTO [CampingPlads].[dbo].[CampSite]
			VALUES (@Number, @Size, @SeaView, 1)
			SET @Number = @Number+1
		END
END
