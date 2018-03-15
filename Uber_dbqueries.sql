/*Regine Fae Serafico, Darrius Shaw, Yinmeng Tiao*/

USE UberDb;

GO

/* Requirement 1 - Displaying Tables*/

SELECT * FROM Customer;
SELECT * FROM Employee;
SELECT * FROM LocationAddress;
SELECT * FROM Trip;


/*Requirement 2 - Display total number of trips where distance is greater than 7*/

SELECT COUNT([TripID]) as NumberOfTrips
FROM Trip
WHERE Distance > 7

/*Requirement 3 - Displaying the amount paid by each customer */


SELECT A.FirstName as CustomerName,
	   B.Price as AmountPaid
FROM Customer as A INNER JOIN Trip as B 
ON A.CustomerID = B.CustomerID


/*Table showing the First Name of Customer, their email and the price they paid for a trip*/

/*Outer join is neccesary because it displays information when information is 'NULL.' 
Inner join will demonstrate matching information that contains all of the requirements, 
while outer joins displays information that still is 'NULL'*/

SELECT B.FirstName,
	   B.Email,
	   A.Price
FROM Trip as A 
LEFT OUTER JOIN Customer as B ON A.CustomerID = B.CustomerID
LEFT OUTER JOIN Employee as C ON A.EmployeeId = C.EmployeeID
ORDER BY TripID

/*Requirement 5 - Subquery*/

SELECT sub.*
  FROM (
        SELECT *
          FROM LocationAddress
         WHERE StateName = 'MA'
       ) sub
 WHERE City = 'Boston'
