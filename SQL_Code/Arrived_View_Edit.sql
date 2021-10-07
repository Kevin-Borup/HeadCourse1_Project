CREATE VIEW Arrived AS SELECT
	Customer.CustomerNr,
	Reservation.Arrived
FROM Customer
JOIN Booking ON Customer.CustomerNr = Booking.CustomerNr
JOIN Reservation ON Booking.ReserveId = Reservation.ReserveId