USE expense_tracker;

INSERT INTO Clients (Name)
VALUES ('Ashley Rivera'),
       ('Jane Smith'),
       ('Robin Williams'),
       ('Maya Angelou'),
       ('Stephen Hawking'),
       ('David Jones');

INSERT INTO Expenses (ClientID, Category, Amount, Date, Description)
VALUES (1, 'Food', 150.75, '2024-10-15', "Groceries at Wegman's"),
       (1, 'Rent', 1000.00, '2024-11-01', 'Monthly rent'),
       (1, 'Entertainment', 22.00, '2024-10-12', 'Movie Ticket'),
       (1, 'Social', 70.00, '2024-10-13', 'Birthday celebration'),
       (1, 'Transportation', 132.00, '2024-11-12', 'Monthly metrocard'),
       (4, 'Food', 98.75, '2024-10-15', 'Groceries at Target'),
       (2, 'Rent', 1000.00, '2024-09-01', 'Monthly rent'),
       (3, 'Entertainment', 200.00, '2024-09-15', 'Used PlayStation'),
       (6, 'Rent', 700.00, '2024-10-01', 'Monthly rent'),
       (5, 'Transportation', 132.00, '2024-11-24', 'Uber to Westchester');
