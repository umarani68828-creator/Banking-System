CREATE DATABASE IF NOT EXISTS BankingDB;
USE BankingDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountNumber VARCHAR(20) UNIQUE,
    AccountType VARCHAR(20),
    Balance DECIMAL(15,2),
    BranchName VARCHAR(100),
    OpeningDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionType VARCHAR(20),
    Amount DECIMAL(15,2),
    TransactionDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanType VARCHAR(50),
    LoanAmount DECIMAL(15,2),
    InterestRate DECIMAL(5,2),
    LoanDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers VALUES
(1,'Customer 1','Mumbai','9876500001','customer1@gmail.com'),
(2,'Customer 2','Delhi','9876500002','customer2@gmail.com'),
(3,'Customer 3','Bengaluru','9876500003','customer3@gmail.com'),
(4,'Customer 4','Chennai','9876500004','customer4@gmail.com'),
(5,'Customer 5','Kolkata','9876500005','customer5@gmail.com'),
(6,'Customer 6','Pune','9876500006','customer6@gmail.com'),
(7,'Customer 7','Hyderabad','9876500007','customer7@gmail.com'),
(8,'Customer 8','Ahmedabad','9876500008','customer8@gmail.com'),
(9,'Customer 9','Jaipur','9876500009','customer9@gmail.com'),
(10,'Customer 10','Lucknow','9876500010','customer10@gmail.com'),
(11,'Customer 11','Mumbai','9876500011','customer11@gmail.com'),
(12,'Customer 12','Delhi','9876500012','customer12@gmail.com'),
(13,'Customer 13','Bengaluru','9876500013','customer13@gmail.com'),
(14,'Customer 14','Chennai','9876500014','customer14@gmail.com'),
(15,'Customer 15','Kolkata','9876500015','customer15@gmail.com'),
(16,'Customer 16','Pune','9876500016','customer16@gmail.com'),
(17,'Customer 17','Hyderabad','9876500017','customer17@gmail.com'),
(18,'Customer 18','Ahmedabad','9876500018','customer18@gmail.com'),
(19,'Customer 19','Jaipur','9876500019','customer19@gmail.com'),
(20,'Customer 20','Lucknow','9876500020','customer20@gmail.com'),
(21,'Customer 21','Mumbai','9876500021','customer21@gmail.com'),
(22,'Customer 22','Delhi','9876500022','customer22@gmail.com'),
(23,'Customer 23','Bengaluru','9876500023','customer23@gmail.com'),
(24,'Customer 24','Chennai','9876500024','customer24@gmail.com'),
(25,'Customer 25','Kolkata','9876500025','customer25@gmail.com'),
(26,'Customer 26','Pune','9876500026','customer26@gmail.com'),
(27,'Customer 27','Hyderabad','9876500027','customer27@gmail.com'),
(28,'Customer 28','Ahmedabad','9876500028','customer28@gmail.com'),
(29,'Customer 29','Jaipur','9876500029','customer29@gmail.com'),
(30,'Customer 30','Lucknow','9876500030','customer30@gmail.com'),
(31,'Customer 31','Mumbai','9876500031','customer31@gmail.com'),
(32,'Customer 32','Delhi','9876500032','customer32@gmail.com'),
(33,'Customer 33','Bengaluru','9876500033','customer33@gmail.com'),
(34,'Customer 34','Chennai','9876500034','customer34@gmail.com'),
(35,'Customer 35','Kolkata','9876500035','customer35@gmail.com'),
(36,'Customer 36','Pune','9876500036','customer36@gmail.com'),
(37,'Customer 37','Hyderabad','9876500037','customer37@gmail.com'),
(38,'Customer 38','Ahmedabad','9876500038','customer38@gmail.com'),
(39,'Customer 39','Jaipur','9876500039','customer39@gmail.com'),
(40,'Customer 40','Lucknow','9876500040','customer40@gmail.com'),
(41,'Customer 41','Mumbai','9876500041','customer41@gmail.com'),
(42,'Customer 42','Delhi','9876500042','customer42@gmail.com'),
(43,'Customer 43','Bengaluru','9876500043','customer43@gmail.com'),
(44,'Customer 44','Chennai','9876500044','customer44@gmail.com'),
(45,'Customer 45','Kolkata','9876500045','customer45@gmail.com'),
(46,'Customer 46','Pune','9876500046','customer46@gmail.com'),
(47,'Customer 47','Hyderabad','9876500047','customer47@gmail.com'),
(48,'Customer 48','Ahmedabad','9876500048','customer48@gmail.com'),
(49,'Customer 49','Jaipur','9876500049','customer49@gmail.com'),
(50,'Customer 50','Lucknow','9876500050','customer50@gmail.com');

INSERT INTO Accounts VALUES
(1,1,'ACC000001','Savings',25000,'Main Branch','2024-01-01'),
(2,2,'ACC000002','Current',30000,'Central Branch','2024-01-02'),
(3,3,'ACC000003','Savings',35000,'North Branch','2024-01-03'),
(4,4,'ACC000004','Current',40000,'South Branch','2024-01-04'),
(5,5,'ACC000005','Savings',45000,'East Branch','2024-01-05'),
(6,6,'ACC000006','Current',50000,'West Branch','2024-01-06'),
(7,7,'ACC000007','Savings',55000,'Main Branch','2024-01-07'),
(8,8,'ACC000008','Current',60000,'Central Branch','2024-01-08'),
(9,9,'ACC000009','Savings',65000,'North Branch','2024-01-09'),
(10,10,'ACC000010','Current',70000,'South Branch','2024-01-10'),
(11,11,'ACC000011','Savings',75000,'East Branch','2024-01-11'),
(12,12,'ACC000012','Current',80000,'West Branch','2024-01-12'),
(13,13,'ACC000013','Savings',85000,'Main Branch','2024-01-13'),
(14,14,'ACC000014','Current',90000,'Central Branch','2024-01-14'),
(15,15,'ACC000015','Savings',95000,'North Branch','2024-01-15'),
(16,16,'ACC000016','Current',100000,'South Branch','2024-01-16'),
(17,17,'ACC000017','Savings',105000,'East Branch','2024-01-17'),
(18,18,'ACC000018','Current',110000,'West Branch','2024-01-18'),
(19,19,'ACC000019','Savings',115000,'Main Branch','2024-01-19'),
(20,20,'ACC000020','Current',120000,'Central Branch','2024-01-20'),
(21,21,'ACC000021','Savings',125000,'North Branch','2024-01-21'),
(22,22,'ACC000022','Current',130000,'South Branch','2024-01-22'),
(23,23,'ACC000023','Savings',135000,'East Branch','2024-01-23'),
(24,24,'ACC000024','Current',140000,'West Branch','2024-01-24'),
(25,25,'ACC000025','Savings',145000,'Main Branch','2024-01-25'),
(26,26,'ACC000026','Current',150000,'Central Branch','2024-01-26'),
(27,27,'ACC000027','Savings',155000,'North Branch','2024-01-27'),
(28,28,'ACC000028','Current',160000,'South Branch','2024-01-28'),
(29,29,'ACC000029','Savings',165000,'East Branch','2024-01-01'),
(30,30,'ACC000030','Current',170000,'West Branch','2024-01-02'),
(31,31,'ACC000031','Savings',175000,'Main Branch','2024-01-03'),
(32,32,'ACC000032','Current',180000,'Central Branch','2024-01-04'),
(33,33,'ACC000033','Savings',185000,'North Branch','2024-01-05'),
(34,34,'ACC000034','Current',190000,'South Branch','2024-01-06'),
(35,35,'ACC000035','Savings',195000,'East Branch','2024-01-07'),
(36,36,'ACC000036','Current',200000,'West Branch','2024-01-08'),
(37,37,'ACC000037','Savings',205000,'Main Branch','2024-01-09'),
(38,38,'ACC000038','Current',210000,'Central Branch','2024-01-10'),
(39,39,'ACC000039','Savings',215000,'North Branch','2024-01-11'),
(40,40,'ACC000040','Current',220000,'South Branch','2024-01-12'),
(41,41,'ACC000041','Savings',225000,'East Branch','2024-01-13'),
(42,42,'ACC000042','Current',230000,'West Branch','2024-01-14'),
(43,43,'ACC000043','Savings',235000,'Main Branch','2024-01-15'),
(44,44,'ACC000044','Current',240000,'Central Branch','2024-01-16'),
(45,45,'ACC000045','Savings',245000,'North Branch','2024-01-17'),
(46,46,'ACC000046','Current',250000,'South Branch','2024-01-18'),
(47,47,'ACC000047','Savings',255000,'East Branch','2024-01-19'),
(48,48,'ACC000048','Current',260000,'West Branch','2024-01-20'),
(49,49,'ACC000049','Savings',265000,'Main Branch','2024-01-21'),
(50,50,'ACC000050','Current',270000,'Central Branch','2024-01-22');

INSERT INTO Transactions VALUES
(1,1,'Deposit',1250,'2024-03-01'),
(2,2,'Deposit',1500,'2024-03-02'),
(3,3,'Withdrawal',1750,'2024-03-03'),
(4,4,'Deposit',2000,'2024-03-04'),
(5,5,'Deposit',2250,'2024-03-05'),
(6,6,'Withdrawal',2500,'2024-03-06'),
(7,7,'Deposit',2750,'2024-03-07'),
(8,8,'Deposit',3000,'2024-03-08'),
(9,9,'Withdrawal',3250,'2024-03-09'),
(10,10,'Deposit',3500,'2024-03-10'),
(11,11,'Deposit',3750,'2024-03-11'),
(12,12,'Withdrawal',4000,'2024-03-12'),
(13,13,'Deposit',4250,'2024-03-13'),
(14,14,'Deposit',4500,'2024-03-14'),
(15,15,'Withdrawal',4750,'2024-03-15'),
(16,16,'Deposit',5000,'2024-03-16'),
(17,17,'Deposit',5250,'2024-03-17'),
(18,18,'Withdrawal',5500,'2024-03-18'),
(19,19,'Deposit',5750,'2024-03-19'),
(20,20,'Deposit',6000,'2024-03-20'),
(21,21,'Withdrawal',6250,'2024-03-21'),
(22,22,'Deposit',6500,'2024-03-22'),
(23,23,'Deposit',6750,'2024-03-23'),
(24,24,'Withdrawal',7000,'2024-03-24'),
(25,25,'Deposit',7250,'2024-03-25'),
(26,26,'Deposit',7500,'2024-03-26'),
(27,27,'Withdrawal',7750,'2024-03-27'),
(28,28,'Deposit',8000,'2024-03-28'),
(29,29,'Deposit',8250,'2024-03-01'),
(30,30,'Withdrawal',8500,'2024-03-02'),
(31,31,'Deposit',8750,'2024-03-03'),
(32,32,'Deposit',9000,'2024-03-04'),
(33,33,'Withdrawal',9250,'2024-03-05'),
(34,34,'Deposit',9500,'2024-03-06'),
(35,35,'Deposit',9750,'2024-03-07'),
(36,36,'Withdrawal',10000,'2024-03-08'),
(37,37,'Deposit',10250,'2024-03-09'),
(38,38,'Deposit',10500,'2024-03-10'),
(39,39,'Withdrawal',10750,'2024-03-11'),
(40,40,'Deposit',11000,'2024-03-12'),
(41,41,'Deposit',11250,'2024-03-13'),
(42,42,'Withdrawal',11500,'2024-03-14'),
(43,43,'Deposit',11750,'2024-03-15'),
(44,44,'Deposit',12000,'2024-03-16'),
(45,45,'Withdrawal',12250,'2024-03-17'),
(46,46,'Deposit',12500,'2024-03-18'),
(47,47,'Deposit',12750,'2024-03-19'),
(48,48,'Withdrawal',13000,'2024-03-20'),
(49,49,'Deposit',13250,'2024-03-21'),
(50,50,'Deposit',13500,'2024-03-22');

INSERT INTO Loans VALUES
(1,1,'Home Loan',120000,8.5,'2024-02-01'),
(2,2,'Car Loan',140000,9.0,'2024-02-02'),
(3,3,'Education Loan',160000,7.5,'2024-02-03'),
(4,4,'Personal Loan',180000,10.5,'2024-02-04'),
(5,5,'Home Loan',200000,8.5,'2024-02-05'),
(6,6,'Car Loan',220000,9.0,'2024-02-06'),
(7,7,'Education Loan',240000,7.5,'2024-02-07'),
(8,8,'Personal Loan',260000,10.5,'2024-02-08'),
(9,9,'Home Loan',280000,8.5,'2024-02-09'),
(10,10,'Car Loan',300000,9.0,'2024-02-10'),
(11,11,'Education Loan',320000,7.5,'2024-02-11'),
(12,12,'Personal Loan',340000,10.5,'2024-02-12'),
(13,13,'Home Loan',360000,8.5,'2024-02-13'),
(14,14,'Car Loan',380000,9.0,'2024-02-14'),
(15,15,'Education Loan',400000,7.5,'2024-02-15'),
(16,16,'Personal Loan',420000,10.5,'2024-02-16'),
(17,17,'Home Loan',440000,8.5,'2024-02-17'),
(18,18,'Car Loan',460000,9.0,'2024-02-18'),
(19,19,'Education Loan',480000,7.5,'2024-02-19'),
(20,20,'Personal Loan',500000,10.5,'2024-02-20'),
(21,21,'Home Loan',520000,8.5,'2024-02-21'),
(22,22,'Car Loan',540000,9.0,'2024-02-22'),
(23,23,'Education Loan',560000,7.5,'2024-02-23'),
(24,24,'Personal Loan',580000,10.5,'2024-02-24'),
(25,25,'Home Loan',600000,8.5,'2024-02-25'),
(26,26,'Car Loan',620000,9.0,'2024-02-26'),
(27,27,'Education Loan',640000,7.5,'2024-02-27'),
(28,28,'Personal Loan',660000,10.5,'2024-02-28'),
(29,29,'Home Loan',680000,8.5,'2024-02-01'),
(30,30,'Car Loan',700000,9.0,'2024-02-02'),
(31,31,'Education Loan',720000,7.5,'2024-02-03'),
(32,32,'Personal Loan',740000,10.5,'2024-02-04'),
(33,33,'Home Loan',760000,8.5,'2024-02-05'),
(34,34,'Car Loan',780000,9.0,'2024-02-06'),
(35,35,'Education Loan',800000,7.5,'2024-02-07'),
(36,36,'Personal Loan',820000,10.5,'2024-02-08'),
(37,37,'Home Loan',840000,8.5,'2024-02-09'),
(38,38,'Car Loan',860000,9.0,'2024-02-10'),
(39,39,'Education Loan',880000,7.5,'2024-02-11'),
(40,40,'Personal Loan',900000,10.5,'2024-02-12'),
(41,41,'Home Loan',920000,8.5,'2024-02-13'),
(42,42,'Car Loan',940000,9.0,'2024-02-14'),
(43,43,'Education Loan',960000,7.5,'2024-02-15'),
(44,44,'Personal Loan',980000,10.5,'2024-02-16'),
(45,45,'Home Loan',1000000,8.5,'2024-02-17'),
(46,46,'Car Loan',1020000,9.0,'2024-02-18'),
(47,47,'Education Loan',1040000,7.5,'2024-02-19'),
(48,48,'Personal Loan',1060000,10.5,'2024-02-20'),
(49,49,'Home Loan',1080000,8.5,'2024-02-21'),
(50,50,'Car Loan',1100000,9.0,'2024-02-22');

SELECT COUNT(*) AS TotalCustomers FROM Customers;
SELECT SUM(Balance) AS TotalBalance FROM Accounts;
SELECT AVG(Balance) AS AverageBalance FROM Accounts;
SELECT MAX(Balance) AS HighestBalance FROM Accounts;
SELECT MIN(Balance) AS LowestBalance FROM Accounts;
SELECT AccountType,
       COUNT(*) AS TotalAccounts,
       SUM(Balance) AS TotalBalance,
       AVG(Balance) AS AverageBalance
FROM Accounts
GROUP BY AccountType;
SELECT LoanType,
       COUNT(*) AS TotalLoans,
       SUM(LoanAmount) AS TotalLoanAmount
FROM Loans
GROUP BY LoanType;
SELECT c.CustomerName,
       a.AccountNumber,
       a.AccountType,
       a.Balance
FROM Customers c
INNER JOIN Accounts a
ON c.CustomerID = a.CustomerID;
SELECT c.CustomerName,
       a.AccountNumber,
       t.TransactionType,
       t.Amount
FROM Customers c
JOIN Accounts a
ON c.CustomerID = a.CustomerID
JOIN Transactions t
ON a.AccountID = t.AccountID;
SELECT c.CustomerName,
       l.LoanType,
       l.LoanAmount,
       l.InterestRate
FROM Customers c
JOIN Loans l
ON c.CustomerID = l.CustomerID;

SELECT c.CustomerName,
       a.Balance
FROM Customers c
JOIN Accounts a
ON c.CustomerID = a.CustomerID
ORDER BY a.Balance DESC
LIMIT 5;
