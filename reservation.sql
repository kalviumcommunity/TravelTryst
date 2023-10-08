CREATE DATABASE Reservations;
USE Reservations;

-- Table to store information about hotels
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(255)
);

-- Table to store information about room types
CREATE TABLE RoomTypes (
    RoomTypeID INT PRIMARY KEY UNIQUE AUTO_INCREMENT ,
    TypeName VARCHAR(50) NOT NULL,
    Description TEXT
);
-- Table to store information about individual rooms
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY UNIQUE AUTO_INCREMENT ,
    HotelID INT,
    RoomNumber VARCHAR(10) NOT NULL,
    RoomTypeID INT,
    Price DECIMAL(10, 2),
    IsAvailable BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID),
    FOREIGN KEY (RoomTypeID) REFERENCES RoomTypes(RoomTypeID)
);

-- Table to store information about guests
CREATE TABLE Guests (
    GuestID INT PRIMARY KEY UNIQUE AUTO_INCREMENT ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(15),
    Email VARCHAR(255)
);

-- Table to store reservations
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
    GuestID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

SHOW TABLES;