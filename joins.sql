Use Reservations;

SELECT R.RoomNumber, RT.TypeName, R.Price
FROM Rooms Rx
INNER JOIN RoomTypes RT ON R.RoomTypeID = RT.RoomTypeID;

SELECT H.Name AS HotelName, R.RoomNumber, R.Price, Res.CheckInDate, Res.CheckOutDate
FROM Hotels H
LEFT JOIN Rooms R ON H.HotelID = R.HotelID
LEFT JOIN Reservations Res ON R.RoomID = Res.RoomID;

SELECT H.Name AS HotelName, R.RoomNumber
FROM Hotels H
INNER JOIN Rooms R ON H.HotelID = R.HotelID
WHERE R.RoomID NOT IN (
    SELECT RoomID
    FROM Reservations
    WHERE '2023-11-04' BETWEEN CheckInDate AND CheckOutDate
);

SELECT H.Name AS HotelName, R.RoomNumber, RT.TypeName
FROM Hotels H
LEFT JOIN Rooms R ON H.HotelID = R.HotelID
LEFT JOIN RoomTypes RT ON R.RoomTypeID = RT.RoomTypeID;

SELECT H.Name AS HotelName
FROM Hotels H
LEFT JOIN Rooms R ON H.HotelID = R.HotelID
LEFT JOIN Reservations Res ON R.RoomID = Res.RoomID
WHERE Res.ReservationID IS NULL;

