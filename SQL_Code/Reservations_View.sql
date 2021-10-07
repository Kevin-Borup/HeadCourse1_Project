CREATE VIEW Reservations AS SELECT
	Reservation.ReserveId,
	(Customer.FirstName + ' ' + Customer.LastName) AS FullName,
	Reservation.CabinNumber,
	Reservation.CampSiteNumber,
	Booking.StartDate,
	Booking.EndDate
FROM Reservation
JOIN Booking ON Reservation.ReserveId = Booking.ReserveId
JOIN Customer ON Customer.CustomerNr = Booking.CustomerNr
