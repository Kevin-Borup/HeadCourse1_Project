ALTER VIEW ArrivingToday AS SELECT 
	(Customer.FirstName + ' ' + Customer.LastName) AS FullName,
	Reservation.Adult,
	Reservation.Child,
	Reservation.CabinNumber, 
	Reservation.CampSitenumber,
	Booking.StartDate, 
	Booking.EndDate
FROM Booking
JOIN Customer ON Booking.CustomerNr = Customer.CustomerNr
LEFT JOIN Reservation ON Booking.ReserveId = Reservation.ReserveId
WHERE Booking.StartDate = CAST(GetDate() AS Date)