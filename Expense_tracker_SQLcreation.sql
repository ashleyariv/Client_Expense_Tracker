CREATE DATABASE expense_tracker;
USE expense_tracker;

CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Expenses (
    ExpenseID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    Category VARCHAR(255),
    Amount DECIMAL(10, 2) NOT NULL,
    Date DATE NOT NULL,
    Description TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID) ON DELETE CASCADE
);

CREATE TABLE TotalExpenses (
    ClientID INT PRIMARY KEY,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID) ON DELETE CASCADE
);

DELIMITER $$

CREATE TRIGGER UpdateTotalExpenses
AFTER INSERT ON Expenses
FOR EACH ROW
BEGIN
    INSERT INTO TotalExpenses (ClientID, TotalAmount)
    VALUES (NEW.ClientID, NEW.Amount)
    ON DUPLICATE KEY UPDATE TotalAmount = TotalAmount + NEW.Amount;
END $$

DELIMITER ;
