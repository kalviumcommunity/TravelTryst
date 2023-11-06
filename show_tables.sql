use Reservations;

UPDATE Rooms
SET IsAvailable = FALSE
WHERE RoomID = 1;

DELETE FROM RoomTypes WHERE RoomTypeID = 5;
DELETE FROM Rooms WHERE RoomID = 5;
DELETE FROM Guests WHERE GuestID = 5;
DELETE FROM Reservations WHERE ReservationID = 5;

Select * from Hotels;
Select * from Guests;
Select * from Rooms;
Select * from RoomTypes;
Select * from Reservations;
