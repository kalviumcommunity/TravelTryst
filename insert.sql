USE Reservations;

-- Insert sample data into Hotels table
INSERT INTO Hotels (Name, Address, Phone, Email)
VALUES 
    ('Hotel A', '123 Main St', '123-456-7890', 'hotelA@example.com'),
    ('Hotel B', '456 Elm St', '234-567-8901', 'hotelB@example.com'),
    ('Hotel C', '789 Elm St', '345-678-9012', 'hotelC@example.com'),
    ('Hotel D', '101 Oak St', '456-789-0123', 'hotelD@example.com');

-- Insert sample data into RoomTypes table
INSERT INTO RoomTypes (TypeName, Description)
VALUES 
    ('Single', 'A room with a single bed and basic amenities'),
    ('Double', 'A room with a double bed and additional space'),
    ('Suite', 'A spacious suite with luxurious amenities'),
    ('Twin', 'A room with two single beds for double occupancy');

-- Insert sample data into Rooms table
INSERT INTO Rooms (HotelID, RoomNumber, RoomTypeID, Price, IsAvailable)
VALUES 
    (1, '101', 1, 100.00, TRUE),
    (1, '102', 1, 100.00, TRUE),
    (2, '201', 2, 150.00, TRUE),
    (2, '202', 2, 150.00, TRUE),
    (3, '301', 1, 120.00, TRUE),
    (3, '302', 1, 120.00, TRUE);

-- Insert sample data into Guests table
INSERT INTO Guests (FirstName, LastName, Address, Phone, Email)
VALUES 
    ('John', 'Doe', '456 Oak St', '345-678-9012', 'john.doe@example.com'),
    ('Jane', 'Smith', '789 Pine St', '567-890-1234', 'jane.smith@example.com'),
    ('Alice', 'Johnson', '123 Pine St', '234-567-8901', 'alice.johnson@example.com'),
    ('Bob', 'Wilson', '456 Oak St', '345-678-9012', 'bob.wilson@example.com');

-- Insert sample data into Reservations table
INSERT INTO Reservations (GuestID, RoomID, CheckInDate, CheckOutDate, TotalAmount)
VALUES 
    (1, 1, '2023-11-01', '2023-11-05', 400.00),
    (2, 2, '2023-11-03', '2023-11-07', 400.00),
    (3, 5, '2023-11-02', '2023-11-06', 240.00),
    (4, 6, '2023-11-04', '2023-11-08', 300.00),
    (5, 1, '2023-11-03', '2023-11-06', 240.00);


-- Insert example users
INSERT INTO Users (Username, Password, Role) VALUES
('admin_user', 'new_admin_password', 'admin'),
('new_hotel_manager_user', 'new_hotel_manager_password', 'hotel_manager'),
('new_guest_user', 'guest_password', 'guest');
