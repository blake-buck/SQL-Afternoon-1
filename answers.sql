CREATE TABLE Person(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name varchar(260),
  Age int,
  Height int,
  City varchar(260),
  FavoriteColor varchar(260)
 )
 
 INSERT INTO Person (Name, Age, Height, City, FavoriteColor)
	VALUES ('Jeff', 41, 50, 'Seattle', 'Red')
	
SELECT * FROM Person 
	ORDER BY Height DESC; 
	
SELECT * FROM Person 
	ORDER BY Height; 
	
SELECT * FROM Person 
	ORDER BY Age DESC; 

SELECT * FROM Person 
	WHERE Age > 20; 
	
SELECT * FROM Person 
	WHERE Age = 18; 
	
SELECT * FROM Person 
	WHERE Age < 20 OR Age > 30; 

SELECT * FROM Person 
	WHERE Age != 27; 
	
SELECT * FROM Person 
	WHERE FavoriteColor NOT LIKE 'red' ; 
	
SELECT * FROM Person 
	WHERE FavoriteColor NOT LIKE 'red'  AND 
    FavoriteColor NOT LIKE 'blue'; 
	
SELECT * FROM Person WHERE FavoriteColor IN ('Orange', 'Green', 'Blue');

SELECT * FROM Person WHERE FavoriteColor IN ('Yellow', 'Purple');

CREATE TABLE Orders(
  PersonID int,
  ProductName varchar(260),
  ProductPrice decimal,
  Quantity int
)

INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
	VALUES(3, 'Sour Patch Kids', 4.99, 500);
	
SELECT * FROM Orders;

SELECT SUM(Quantity) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders
 WHERE PersonID = 3;
 
INSERT INTO Artist (Name) 
	VALUES ('Libertarian Dad Club');
SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;

SELECT * FROM Artist ORDER BY Name LIMIT 5;

SELECT * FROM Artist 
	WHERE SUBSTR(Name, 1, 5) LIKE 'Black';
	
SELECT * FROM Artist 
	WHERE Name LIKE '%Black%';
	
SELECT * FROM Employee WHERE City='Calgary';

SELECT firstName, lastName, MAX(BirthDate)  from Employee;

SELECT firstName, lastName, MIN(BirthDate)  from Employee;

SELECT * from Employee 
	WHERE ReportsTo=2;
	
SELECT COUNT(*) FROM Employee
	WHERE City='Lethbridge';
	
SELECT COUNT(*) FROM Invoice
	WHERE BillingCountry='USA';
	
SELECT MAX(Total) FROM Invoice;

SELECT MIN(Total) FROM Invoice;

SELECT * FROM Invoice
	WHERE Total > 5;
	
SELECT COUNT(*) FROM Invoice
	WHERE Total < 5;
	
SELECT COUNT(*) FROM Invoice
	WHERE BillingState IN ('CA', 'TX', 'AZ');
	
SELECT AVG(TOTAL) FROM Invoice;

SELECT SUM(TOTAL) FROM Invoice;