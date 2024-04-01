-- CREATE DATABASE voyageease;
-- USE voyageease;

-- CREATE TABLE Documents (
--     DocumentsID INT PRIMARY KEY,
--     PassportNumber VARCHAR(20),
--     AadharNumber VARCHAR(20),
--     DrivingLicense VARCHAR(20)
-- );

-- CREATE TABLE Passenger (
--     PassengerID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Email VARCHAR(100),
--     PhoneNumber VARCHAR(20),
--     Address VARCHAR(255),
--     DocumentsID INT,
--     FOREIGN KEY (DocumentsID) REFERENCES Documents(DocumentsID)
-- );

-- CREATE TABLE Location (
--     LocationID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Address VARCHAR(255),
--     Country VARCHAR(100),
--     Description TEXT
-- );

-- CREATE TABLE Staff (
--     StaffID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Role VARCHAR(100),
--     ContactInformation VARCHAR(255),
--     LocationID INT,
--     FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
-- );

-- CREATE TABLE Airlines (
--     AirlineID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Contact VARCHAR(100),
--     LuggageFare DECIMAL(10, 2),
--     HeadquartersLocation VARCHAR(255),
--     FleetSize INT
-- );

-- CREATE TABLE Flight (
--     FlightID INT PRIMARY KEY,
--     AirlineID INT,
--     DepartureLocation INT,
--     ArrivalLocation INT,
--     DepartureDateTime DATETIME,
--     ArrivalDateTime DATETIME,
--     Price DECIMAL(10, 2),
--     Seat INT,
--     FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID),
--     FOREIGN KEY (DepartureLocation) REFERENCES Location(LocationID),
--     FOREIGN KEY (ArrivalLocation) REFERENCES Location(LocationID)
-- );

-- CREATE TABLE Hotel (
--     HotelID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     LocationID INT,
--     Address VARCHAR(255),
--     Tariff DECIMAL(10, 2),
--     RoomNumber INT,
--     Description TEXT,
--     Ratings DECIMAL(3, 2),
--     FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
-- );

-- CREATE TABLE CarRental (
--     CarRentalID INT PRIMARY KEY,
--     CompanyName VARCHAR(100),
--     LocationID INT,
--     CarType VARCHAR(100),
--     Rates DECIMAL(10, 2),
--     CarNumber VARCHAR(20),
--     Contact VARCHAR(100),
--     Ratings DECIMAL(3, 2),
--     FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
-- );

-- CREATE TABLE Activity (
--     ActivityID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     LocationID INT,
--     Description TEXT,
--     Price DECIMAL(10, 2),
--     FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
-- );

-- CREATE TABLE Booking (
--     BookingID INT PRIMARY KEY,
--     PassengerID INT,
--     FlightID INT,
--     HotelID INT,
--     CarRentalID INT,
--     ActivityID INT,
--     PackageID INT,
--     BookingDate DATETIME,
--     TotalPrice DECIMAL(10, 2),
--     FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
--     FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
--     FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
--     FOREIGN KEY (CarRentalID) REFERENCES CarRental(CarRentalID),
--     FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID),
--     FOREIGN KEY (PackageID) REFERENCES TravelPackage(PackageID)
-- );

-- CREATE TABLE TravelPackage (
--     PackageID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Description TEXT,
--     Price DECIMAL(10, 2),
--     Includes TEXT,
--     BookingID INT
-- );

-- CREATE TABLE Payment (
--     PaymentID INT PRIMARY KEY,
--     BookingID INT,
--     PaymentDate DATETIME,
--     Amount DECIMAL(10, 2),
--     PaymentMethod VARCHAR(100),
--     FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
-- );

-- CREATE TABLE Review (
--     ReviewID INT PRIMARY KEY,
--     BookingID INT,
--     Rating DECIMAL(3, 2),
--     Comment TEXT,
--     Date DATETIME,
--     FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
-- );


-- INSERT INTO Location (LocationID, Name, Address, Country, Description) VALUES
-- (1, 'Teens Park', '66 Street, Moscow, Russia', 'Russia', 'Best for teenagers who love to skate'),
-- (2, 'Sunset Beach', '123 Ocean Drive, Honolulu, Hawaii', 'USA', 'Beautiful beach with stunning sunsets'),
-- (3, 'Mountain View Lodge', '42 Alpine Way, Geneva, Switzerland', 'Switzerland', 'Scenic lodge nestled in the Swiss Alps'),
-- (4, 'City Lights Plaza', '10 Broadway, New York City, USA', 'USA', 'Vibrant plaza surrounded by skyscrapers'),
-- (5, 'Tranquil Forest Retreat', 'Greenwood Road, Vancouver, Canada', 'Canada', 'Peaceful getaway surrounded by nature'),
-- (6, 'Serenity Valley', '25 Peaceful Lane, Kyoto, Japan', 'Japan', 'Tranquil valley with cherry blossom trees'),
-- (7, 'Golden Sands Resort', '7 Beachfront Road, Gold Coast, Australia', 'Australia', 'Luxurious beachfront resort with golden sands'),
-- (8, 'Alpine Chalet', '15 Snowy Peaks Way, Innsbruck, Austria', 'Austria', 'Cozy chalet with stunning mountain views'),
-- (9, 'Riverside Retreat', '88 Riverbank Avenue, Paris, France', 'France', 'Charming retreat along the Seine River'),
-- (10, 'Desert Oasis', 'Wadi Rum, Petra, Jordan', 'Jordan', 'Magical oasis amidst the desert sands');


-- INSERT INTO Airlines (AirlineID, Name, Contact, LuggageFare, HeadquartersLocation, FleetSize) VALUES 
-- (1, 'ABC Airlines', 'contact@abc.com', 25.00, 'Headquarters Address', 20),
-- (2, 'SkyHigh Airways', 'info@skyhigh.com', 30.00, 'SkyHigh Tower, Aviation Avenue, London, UK', 30),
-- (3, 'StarJet Airlines', 'info@starjet.com', 28.50, 'StarJet Plaza, Skyline Road, Los Angeles, USA', 25),
-- (4, 'Pacific Wings', 'contact@pacificwings.com', 35.00, 'Pacific Towers, Beachfront Avenue, Sydney, Australia', 40),
-- (5, 'Alpine Air', 'info@alpineair.com', 32.00, 'Alpine Chalet, Mountain View Drive, Zurich, Switzerland', 35),
-- (6, 'Tropical Airways', 'info@tropicalairways.com', 27.50, 'Tropical Terminal, Island Resort Road, Bali, Indonesia', 20),
-- (7, 'Northern Lights Airlines', 'info@northernlights.com', 33.00, 'Aurora Avenue, Iceberg Plaza, Reykjavik, Iceland', 30),
-- (8, 'Safari Skies', 'info@safariskies.com', 40.00, 'Safari Headquarters, Savannah Street, Nairobi, Kenya', 25),
-- (9, 'Mystic Airways', 'info@mysticairways.com', 29.50, 'Mystic Tower, Enchanted Avenue, New Orleans, USA', 20),
-- (10, 'Royal Wings', 'info@royalwings.com', 36.00, 'Royal Palace, Regal Road, London, UK', 25);


-- INSERT INTO Staff (StaffID, Name, Role, ContactInformation, LocationID) VALUES
-- (1, 'Alice Smith', 'Manager', '9876543210', 1),
-- (2, 'Michael Johnson', 'Front Desk Clerk', '9876543211', 2),
-- (3, 'Emily Brown', 'Concierge', '9876543212', 3),
-- (4, 'David Lee', 'Housekeeping Supervisor', '9876543213', 4),
-- (5, 'Jennifer Davis', 'Restaurant Manager', '9876543214', 5),
-- (6, 'Daniel Wilson', 'Maintenance Technician', '9876543215', 6),
-- (7, 'Jessica Taylor', 'Security Guard', '9876543216', 7),
-- (8, 'Andrew Martinez', 'Bellboy', '9876543217', 8),
-- (9, 'Sophia White', 'Event Coordinator', '9876543218', 9),
-- (10, 'Matthew Anderson', 'Accountant', '9876543219', 10);


-- INSERT INTO Documents (DocumentsID, PassportNumber, AadharNumber, DrivingLicense) VALUES 
-- (110, 'AB123456', '123456789012', 'DL123456'),
-- (111, 'CD123457', '234567890123', 'DL123457'),
-- (112, 'EF123458', '345678901234', 'DL123458'),
-- (113, 'GH123459', '456789012345', 'DL123459'),
-- (114, 'IJ123460', '567890123456', 'DL123460'),
-- (115, 'KL123461', '678901234567', 'DL123461'),
-- (116, 'MN123462', '789012345678', 'DL123462'),
-- (117, 'OP123463', '890123456789', 'DL123463'),
-- (118, 'QR123464', '901234567890', 'DL123464'),
-- (119, 'ST123465', '012345678901', 'DL123465');


-- INSERT INTO Passenger (PassengerID, Name, Email, PhoneNumber, Address, DocumentsID) VALUES
-- (1, 'John Doe', 'john27@gmail.com', '8465189462', '123 Main St, Perth, Australia', 110),
-- (2, 'Mark Smith', 'msmith@yahoo.com', '5635106841', '59/D Rose St, London, UK', 111),
-- (3, 'Rahul Patil', 'rp20@yahoo.com', '6625105847', 'ABC Colony, Delhi, India', 112),
-- (4, 'MS Kohli', 'msk18@gmail.com', '7181874777', '18/7 Block, Bangalore, India', 113),
-- (5, 'AB Rayudu', 'abrocks@gmail.com', '2220106841', '32/F Bankers St, London, UK', 114),
-- (6, 'Mark Black', 'imblack@yahoo.com', '9999985541', 'Blacks Hood, Florida, USA', 115),
-- (7, 'Tool Smith', 'tools@yahoo.com', '2156541856', 'WBC Colony, Ohio, USA', 116),
-- (8, 'Rose Monk', 'rosemonk@gamil.com', '6524969841', '34/D, Manchester, UK', 117),
-- (9, 'Jessica Shylock', 'jess@yahoo.com', '5935222841', 'XYZ St, Egypt, Africa', 118),
-- (10, 'Amir Khan', 'ak47@gmail.com', '6478247860', 'Galaxy Towers, Kabul, Afghanistan', 119);


-- INSERT INTO Flight (FlightID, AirlineID, DepartureLocation, ArrivalLocation, DepartureDateTime, ArrivalDateTime, Price, Seat) VALUES
-- (110, 2, 4, 2, '2024-03-20 08:00:00', '2024-03-20 10:00:00', 150.00, 25),
-- (111, 1, 1, 3, '2024-03-21 10:00:00', '2024-03-21 14:00:00', 200.00, 30),
-- (112, 3, 2, 1, '2024-03-22 12:00:00', '2024-03-22 15:00:00', 180.00, 20),
-- (113, 4, 3, 5, '2024-03-23 15:00:00', '2024-03-23 18:00:00', 220.00, 35),
-- (114, 5, 4, 4, '2024-03-24 08:00:00', '2024-03-24 10:00:00', 170.00, 25),
-- (115, 2, 5, 3, '2024-03-25 11:00:00', '2024-03-25 13:00:00', 190.00, 30),
-- (116, 3, 6, 1, '2024-03-26 14:00:00', '2024-03-26 16:00:00', 210.00, 25),
-- (117, 1, 7, 5, '2024-03-27 16:00:00', '2024-03-27 19:00:00', 230.00, 35),
-- (118, 5, 8, 2, '2024-03-28 09:00:00', '2024-03-28 11:00:00', 180.00, 20),
-- (119, 4, 9, 4, '2024-03-29 13:00:00', '2024-03-29 15:00:00', 200.00, 30);


-- INSERT INTO Hotel (HotelID, Name, LocationID, Address, Tariff, RoomNumber, Description, Ratings) VALUES
-- (1, 'Deluxe Land', 1, '66 St, Moscow, Russia', 200.00, 101, 'Cozy rooms for your perfect staycation', 3.5),
-- (2, 'Sunset View', 2, '59/D Rose St, London, UK', 180.00, 202, 'Enjoy the beautiful sunset from your room', 4.2),
-- (3, 'Cityscape Inn', 3, 'ABC Colony, Delhi, India', 220.00, 303, 'Get mesmerized by the city lights from your window', 4.7),
-- (4, 'Mountain Retreat', 4, '18/7 Block, Bangalore, India', 170.00, 404, 'Relax in the lap of nature with stunning mountain views', 4.3),
-- (5, 'Beachfront Resort', 5, '32/F Bankers St, London, UK', 190.00, 505, 'Step out onto the sandy beach right from your room', 3.6),
-- (6, 'Lakeside Lodge', 6, 'Blacks Hood, Florida, USA', 210.00, 606, 'Experience serenity with a room overlooking the lake', 4.4),
-- (7, 'Green Valley Hotel', 7, 'WBC Colony, Ohio, USA', 230.00, 707, 'Surrounded by lush greenery for a refreshing stay', 3.2),
-- (8, 'Cosmopolitan Suites', 8, '34/D, Manchester, UK', 180.00, 808, 'Modern and chic rooms in the heart of the city', 4.5),
-- (9, 'Desert Oasis Resort', 9, 'XYZ St, Egypt, Africa', 200.00, 909, 'Escape to luxury amidst the desert landscape', 3.9),
-- (10, 'Royal Palace Hotel', 10, 'Galaxy Towers, Kabul, Afghanistan', 190.00, 1010, 'Experience royal treatment fit for a king', 4.7);


-- INSERT INTO CarRental (CarRentalID, CompanyName, LocationID, CarType, Rates, CarNumber, Contact, Ratings) VALUES
-- (101, 'Speedy Wheels', 1, 'SUV', 50.00, 'RU-1234', '1234567890', 4.5),
-- (102, 'CityDrive Rentals', 2, 'Sedan', 40.00, 'UK-5678', '2345678901', 4.2),
-- (103, 'Metro Motors', 3, 'Hatchback', 30.00, 'IN-3456', '3456789012', 2.7),
-- (104, 'Breezy Rentals', 4, 'Convertible', 60.00, 'IN-6789', '4567890123', 3.3),
-- (105, 'Beach Buggy Rentals', 5, 'Beach Buggy', 70.00, 'UK-9876', '5678901234', 4.6),
-- (106, 'Sunrise Rentals', 6, 'SUV', 55.00, 'US-2345', '6789012345', 4.4),
-- (107, 'Highway Wheels', 7, 'Sedan', 45.00, 'US-5678', '7890123456', 3.8),
-- (108, 'Green Drive', 8, 'Electric', 65.00, 'UK-7654', '8901234567', 4.5),
-- (109, 'Desert Drive', 9, '4x4', 75.00, 'EG-1234', '9012345678', 2.9),
-- (110, 'Mountain Motors', 10, 'Jeep', 80.00, 'AF-6789', '0123456789', 4.7);


-- INSERT INTO Activity (ActivityID, Name, LocationID, Description, Price) VALUES
-- (110, 'Sightseeing Tour', 5, 'Guided tour of the city', 30.00),
-- (111, 'Boat Cruise', 2, 'Relaxing boat trip along the Thames', 40.00),
-- (112, 'City Walking Tour', 3, 'Explore historical landmarks on foot', 20.00),
-- (113, 'Mountain Hiking', 10, 'Guided hike through scenic mountain trails', 50.00),
-- (114, 'Beach Volleyball', 9, 'Enjoy a game of volleyball on the sandy beach', 25.00),
-- (115, 'Wine Tasting Tour', 7, 'Discover local vineyards and sample wines', 35.00),
-- (116, 'Safari Adventure', 9, 'Exciting safari experience in the African wilderness', 75.00),
-- (117, 'Scuba Diving', 5, 'Explore underwater marine life with professional divers', 60.00),
-- (118, 'Cultural Heritage Tour', 3, 'Immerse in the rich cultural heritage of the city', 30.00),
-- (119, 'Amusement Park Visit', 1, 'Thrilling rides and entertainment for all ages', 45.00);


-- INSERT INTO TravelPackage (PackageID, Name, Description, Price, Includes) VALUES
-- (110, 'Economical Fare', 'Enjoy trips on a budget', 575.75, 'Hotel, Activity'),
-- (111, 'Deluxe Trip', 'King size trip for the ones who live life king size', 6499.00, 'Flight, Hotel, Activity'),
-- (112, 'Romantic Getaway', 'Escape with your loved one for a romantic retreat', 999.99, 'Hotel, Activity'),
-- (113, 'Family Vacation', 'Fun-filled vacation package for the whole family', 2499.50, 'Flight, Hotel, Activity'),
-- (114, 'Cultural Immersion Tour', 'Immerse yourself in the local culture and traditions', 799.00, 'Activity'),
-- (115, 'Luxury Cruise', 'Indulge in luxury aboard a lavish cruise ship', 4999.99, 'Activity'),
-- (116, 'Wellness Retreat', 'Relax and rejuvenate with holistic wellness treatments', 1999.75, 'Hotel, Activity'),
-- (117, 'Backpacking Adventure', 'Experience the thrill of backpacking through exotic destinations', 899.50, 'Hotel, Activity'),
-- (118, 'Foodie Delight', 'Savor culinary delights with gourmet food tours and tastings', 349.50, 'Activity'),
-- (119, 'Adventure Expedition', 'Embark on thrilling adventures across diverse landscapes', 1499.00, 'Flight, Hotel, Activity');


-- INSERT INTO Booking (BookingID, PassengerID, FlightID, HotelID, CarRentalID, ActivityID, PackageID, BookingDate, TotalPrice) VALUES
-- (1, 1, 110, 1, 101, 110, 112, '2024-03-15', 650.00),
-- (2, 2, 111, 2, NULL, NULL, 113, '2024-03-16', 2200.00),
-- (3, 3, 112, NULL, NULL, 113, NULL, '2024-03-17', 200.00),
-- (4, 4, NULL, 3, NULL, 114, 114, '2024-03-18', 824.00),
-- (5, 5, 113, NULL, NULL, NULL, 111, '2024-03-19', 2499.50),
-- (6, 6, 114, 5, 103, 115, 116, '2024-03-20', 305.00),
-- (7, 7, 115, 6, NULL, 116, 117, '2024-03-21', 2499.75),
-- (8, 8, 116, 7, NULL, NULL, 118, '2024-03-22', 899.50),
-- (9, 9, NULL, 8, 106, 117, NULL, '2024-03-23', 230.00),
-- (10, 10, 117, NULL, 110, NULL, 119, '2024-03-24', 6499.00);


-- INSERT INTO Payment (PaymentID, BookingID, PaymentDate, Amount, PaymentMethod) VALUES
-- (101, 1, '2024-03-16', 650.00, 'Credit Card'),
-- (102, 2, '2024-03-16', 2200.00, 'Debit Card'),
-- (103, 3, '2024-03-17', 200.00, 'Cash'),
-- (104, 4, '2024-03-18', 824.00, 'Credit Card'),
-- (105, 5, '2024-03-19', 2499.50, 'Debit Card'),
-- (106, 6, '2024-03-20', 305.00, 'Credit Card'),
-- (107, 7, '2024-03-21', 2499.75, 'Credit Card'),
-- (108, 8, '2024-03-22', 899.50, 'Debit Card'),
-- (109, 9, '2024-03-23', 230.00, 'Cash'),
-- (110, 10, '2024-03-24', 6499.00, 'Credit Card');


-- INSERT INTO Review (ReviewID, BookingID, Rating, Comment, Date) VALUES
-- (101, 1, 4, 'Great experience, highly recommended', '2024-03-17'),
-- (102, 2, 5, 'Amazing service and comfortable stay', '2024-03-18'),
-- (103, 4, 4, 'Good location and clean rooms', '2024-03-19'),
-- (104, 5, 5, 'Fantastic vacation package, loved it!', '2024-03-20'),
-- (105, 7, 3, 'Average experience, room for improvement', '2024-03-21'),
-- (106, 8, 4, 'Excellent food and friendly staff', '2024-03-22'),
-- (107, 9, 2, 'Disappointing service, expected better', '2024-03-23'),
-- (108, 10, 5, 'Unforgettable trip, worth every penny', '2024-03-24'),
-- (109, 6, 4, 'Relaxing retreat, would visit again', '2024-03-25'),
-- (110, 3, 5, 'Incredible adventure, exceeded expectations', '2024-03-26');