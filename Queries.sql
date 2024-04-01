use voyageease;

-- Retrieve passenger information along with their associated documents
SELECT Passenger.Name, Passenger.Email, Documents.PassportNumber, Documents.AadharNumber, Documents.DrivingLicense
FROM Passenger
JOIN Documents ON Passenger.DocumentsID = Documents.DocumentsID;

-- Add a new location to the Location table
INSERT INTO Location (LocationID, Name, Address, Country, Description)
VALUES (11, 'Tropical Paradise', '123 Palm Beach Road, Fiji', 'Fiji', 'Exotic island destination with pristine beaches');
SELECT * FROM Location;

-- Remove a staff member from the Staff table based on their StaffID 
DELETE FROM Staff WHERE StaffID = 10;
SELECT * FROM Staff;

-- Update the role of a staff member in the Staff table 
UPDATE Staff SET Role = 'Senior Concierge' WHERE StaffID = 3;
SELECT * FROM Staff;

-- Fetch all flights either departing from or arriving at a 
-- specific location (in this case, LocationID 3) 
SELECT * FROM Flight
WHERE DepartureLocation = 3 OR ArrivalLocation = 3;

-- Retrieve all hotel services with ratings above 4 
SELECT * FROM Hotel WHERE Ratings > 4;

-- Retrieve all activities with descriptions containing the word 'boat' 
SELECT * FROM Activity WHERE Description LIKE '%boat%';

-- Retrieve all passengers who booked a flight
SELECT Passenger.*
FROM Passenger
JOIN Booking ON Passenger.PassengerID = Booking.PassengerID
WHERE Booking.FlightID IS NOT NULL;

-- Retrieve the total price of all bookings made on a specific date
SELECT SUM(TotalPrice) AS TotalBookingPrice
FROM Booking
WHERE BookingDate = '2024-03-20';

-- Retrieve all car rental services with ratings below 4
SELECT * FROM CarRental WHERE Ratings < 4;

-- Retrieve all bookings with their associated payment information
SELECT Booking.*, Payment.*
FROM Booking
JOIN Payment ON Booking.BookingID = Payment.BookingID;

-- Retrieve all passengers who left a review with a rating of 5
SELECT Passenger.* FROM Passenger
JOIN Booking ON Passenger.PassengerID = Booking.PassengerID
JOIN Review ON Booking.BookingID = Review.BookingID
WHERE Review.Rating = 5;

-- Retrieve the names of passengers who booked a flight and a hotel
SELECT Passenger.Name FROM Passenger
JOIN Booking ON Passenger.PassengerID = Booking.PassengerID
WHERE Booking.FlightID IS NOT NULL AND Booking.HotelID IS NOT NULL;

-- Retrieve the names of passengers who booked a flight but not a hotel
SELECT Passenger.Name FROM Passenger
JOIN Booking ON Passenger.PassengerID = Booking.PassengerID
WHERE Booking.FlightID IS NOT NULL AND Booking.HotelID IS NULL;

-- Retrieve the names of passengers who booked a flight and an activity but not a hotel
SELECT Passenger.Name FROM Passenger
JOIN Booking ON Passenger.PassengerID = Booking.PassengerID
WHERE Booking.FlightID IS NOT NULL AND Booking.ActivityID IS NOT NULL AND Booking.HotelID IS NULL;

-- Retrieve all bookings made by passengers from a specific country
SELECT Booking.* FROM Booking
JOIN Passenger ON Booking.PassengerID = Passenger.PassengerID
JOIN Documents ON Passenger.DocumentsID = Documents.DocumentsID
WHERE Passenger.Address like '%UK%';

-- Retrieve all unique locations from which flights depart or arrive
SELECT DISTINCT DepartureLocation AS LocationID, Name, Address, Country
FROM Location JOIN Flight ON Location.LocationID = Flight.DepartureLocation
UNION
SELECT DISTINCT ArrivalLocation AS LocationID, Name, Address, Country
FROM Location JOIN Flight ON Location.LocationID = Flight.ArrivalLocation;

-- Retrieve all locations that are both departure and arrival points for flights
SELECT Location.* FROM Location
JOIN Flight AS DepartureFlight ON Location.LocationID = DepartureFlight.DepartureLocation
JOIN Flight AS ArrivalFlight ON Location.LocationID = ArrivalFlight.ArrivalLocation;

-- Retrieve the name of the airline, departure location, and arrival location for each flight
SELECT Airlines.Name AS Airline, Departure.Name AS DepartureLocation, Arrival.Name AS ArrivalLocation
FROM Flight JOIN Airlines ON Flight.AirlineID = Airlines.AirlineID
JOIN Location AS Departure ON Flight.DepartureLocation = Departure.LocationID
JOIN Location AS Arrival ON Flight.ArrivalLocation = Arrival.LocationID;