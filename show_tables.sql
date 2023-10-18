use Reservations;

Select * from Hotels;
Select * from Guests;
Select * from Rooms;
Select * from RoomTypes;
Select * from Reservations;

UPDATE Rooms
SET IsAvailable = FALSE
WHERE RoomID = 1;


Select RoomID, IsAvailable from Rooms;
