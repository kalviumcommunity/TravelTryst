use Reservations;

-- Insert sample data into Hotels table
INSERT INTO Hotels (Name, Address, Phone, Email)
VALUES ('Hotel A', '123 Main St', '123-456-7890', 'hotelA@example.com'),('Hotel B', '456 Elm St', '234-567-8901', 'hotelB@example.com');

-- Insert sample data into RoomTypes table
INSERT INTO RoomTypes (TypeName, Description)
VALUES ('Single', 'A room with a single bed and basic amenities'),('Double', 'A room with a double bed and additional space');

-- Insert sample data into Rooms table
INSERT INTO Rooms (HotelID, RoomNumber, RoomTypeID, Price, IsAvailable)
VALUES (1, '101', 1, 100.00, TRUE),(1, '102', 1, 100.00, TRUE);


-- Insert sample data into Guests table
INSERT INTO Guests (FirstName, LastName, Address, Phone, Email)
VALUES ('John', 'Doe', '456 Oak St', '345-678-9012', 'john.doe@example.com'),('Jane', 'Smith', '789 Pine St', '567-890-1234', 'jane.smith@example.com');


-- Insert sample data into Reservations table
INSERT INTO Reservations (GuestID, RoomID, CheckInDate, CheckOutDate, TotalAmount)
VALUES (1, 1, '2023-11-01', '2023-11-05', 400.00),(2, 2, '2023-11-03', '2023-11-07', 400.00);

