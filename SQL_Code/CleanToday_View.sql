CREATE VIEW CleanToday AS SELECT 
	Reservation.CabinNumber, 
	Booking.EndDate 
	FROM Reservation
	Join Booking ON Reservation.ReserveId = Booking.ReserveId
	WHERE Booking.EndDate = CAST(GetDate() AS Date)