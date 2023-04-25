CREATE DATABASE MARKET

USE MARKET

CREATE TABLE Products
(
Id INT,
Name NVARCHAR(20)
)


ALTER TABLE Products
ADD Price NVARCHAR(20)

ALTER TABLE Products
ALTER COLUMN Price INT


INSERT INTO Products(Id,Name,Price)
VALUES
(1, 'Phone', 1000),
(2, 'Tablet', 500),
(3, 'AuxCable', 5),
(4, 'Usb', 10),
(5, 'FlashCard', 50),
(6, 'Cd', 10),
(7, 'Dvd', 20),
(8, 'Headphone', 20),
(9, 'CdPlayer', 100),
(10, 'Printer', 150),
(11, 'Scaner', 600),
(12, 'Keyboard', 100)

SELECT Id,Name,Price FROM Products
WHERE Price>10

SELECT * FROM Products
WHERE Name LIKE '%A%'

SELECT * FROM Products
WHERE Price BETWEEN 100 AND 500


UPDATE Products
SET Price=100
WHERE Price<100

ALTER TABLE Products 
ALTER COLUMN Name NVARCHAR(20) NOT NULL;

ALTER TABLE Products
ADD CONSTRAINT min_name_length CHECK (LEN(Name) >= 2);
