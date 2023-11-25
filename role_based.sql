Use Reservations;

-- Grant permissions to users
-- Admin has full control over all tables
GRANT ALL PRIVILEGES ON Reservations.* TO 'admin_user'@'localhost';

-- Hotel managers can manage hotel-related tables
GRANT SELECT, INSERT, UPDATE ON Reservations.Hotels TO 'hotel_manager_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Reservations.RoomTypes TO 'hotel_manager_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Reservations.Rooms TO 'hotel_manager_user'@'localhost';

-- Guests can only select from the Guests and Reservations tables
GRANT SELECT ON Reservations.Guests TO 'guest_user'@'localhost';
GRANT SELECT ON Reservations.Reservations TO 'guest_user'@'localhost';
