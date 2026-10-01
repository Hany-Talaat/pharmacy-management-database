CREATE DATABASE Pharmacy;

USE Pharmacy;

CREATE TABLE Medicines (
    MedicineID INT PRIMARY KEY,
    MedicineName VARCHAR(50),
    Price DECIMAL(5,2),
    Quantity INT
);

CREATE TABLE Pharmacists (
    PharmacistID INT PRIMARY KEY,
    PharmacistName VARCHAR(50),
    PhoneNumber VARCHAR(11)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    CustomerAge INT
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    MedicineID INT,
    CustomerID INT,
    Date DATE,
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Medicines VALUES
    (1, 'Acetaminophen', 50.00, 5),
    (2, 'Naproxen', 10.00, 10),
    (3, 'Ibuprofen', 150.00, 15),
    (4, 'Aspirin', 200.00, 20),
    (5, 'Panadol', 100.00, 50);

INSERT INTO Pharmacists VALUES
    (1, 'Hany', '01234567890'),
    (2, 'Talaat', '01123456780'),
    (3, 'Attia', '01234567810'),
    (4, 'Hussein', '01987654321'),
    (5, 'Gal-Allah', '01298777666');

INSERT INTO Customers VALUES
    (1, 'Youssef', 19),
    (2, 'Mohamed', 20),
    (3, 'Hany', 18),
    (4, 'Hamed', 28),
    (5, 'Samy', 35);

INSERT INTO Sales VALUES
    (1, 1, 2, '2025-12-01'),
    (2, 2, 1, '2026-01-02'),
    (3, 3, 3, '2026-05-03'),
    (4, 4, 4, '2026-01-04'),
    (5, 5, 5, '2025-11-05');

-- Display all medicines
SELECT * FROM Medicines;

-- Retrieve pharmacist names
SELECT PharmacistName
FROM Pharmacists;

-- Sort medicines by price
SELECT *
FROM Medicines
ORDER BY Price;

-- Retrieve unique medicine names
SELECT DISTINCT MedicineName
FROM Medicines;

-- Update medicine quantity
UPDATE Medicines
SET Quantity = 25
WHERE MedicineID = 5;

-- Delete related sales records before deleting the medicine
DELETE FROM Sales
WHERE MedicineID = 5;

-- Delete the medicine record
DELETE FROM Medicines
WHERE MedicineID = 5;
