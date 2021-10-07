CREATE VIEW Customers AS SELECT
	(Customer.FirstName + ' ' + Customer.LastName) AS FullName,
	Reservation.CabinNumber, 
	Reservation.CampSiteNumber,
	Customer.Email,
	Customer.PhoneNr
FROM Customer
JOIN Booking ON Customer.CustomerNr = Booking.CustomerNr
LEFT Join Reservation ON Booking.ReserveId = Reservation.ReserveId