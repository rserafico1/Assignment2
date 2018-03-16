/*Uber*/
/*Regine Fae Serafico, Darrius Shaw, Yinmeng Tiao*/

/* 
Added SQL Server in SQL Server Object Explorer
Entered '(localdb)\MSSQLLocalDB' as Server Name
Windows Authentication
Named Database: UberDb
Connect
*/

CREATE DATABASE UberDb;
GO

USE UberDb;
GO

CREATE TABLE Employee(
  EmployeeID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  PhoneNumber bigint NOT NULL,
  LicensePlate varchar(50) NOT NULL,
  Email varchar(50) NOT NULL);

CREATE TABLE Customer(
  CustomerID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  PhoneNumber bigint NOT NULL,
  Email varchar(50) NOT NULL,
  CardNumber bigint NOT NULL);

CREATE TABLE Trip(
  TripID bigint NOT NULL PRIMARY KEY,
  EmployeeId bigint NOT NULL,
  CustomerID bigint NOT NULL,
  Price varchar(50) NOT NULL,
  Distance bigint NOT NULL,
  LengthAmt bigint NOT NULL,
  LocationID bigint NOT NULL);
  
  CREATE TABLE LocationAddress(
  LocationID bigint NOT NULL PRIMARY KEY,
  StreetAddress varchar(50) NOT NULL,
  City varchar(50) NOT NULL,
  StateName varchar(50) NOT NULL,
  Country varchar(50) NOT NULL,
  Zipcode float NOT NULL);

ALTER TABLE Trip ADD CONSTRAINT FK_Trip_Employee 
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
GO

ALTER TABLE Trip ADD CONSTRAINT FK_Trip_Customer
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
GO

INSERT INTO Employee(EmployeeID, FirstName, LastName, PhoneNumber, LicensePlate, Email) VALUES 
(12345,	'Vicky','Yang',	1111111111,	'SDF999', 'yang@gmail.com'), 
(12346,	'Mario','OMalley', 2222222222, 	'MKI789',	'mario@gmail.com'),
(12347,	'Patricia',	'Baily',	3333333333,	'876UJN',	'baily@gmail.com'),
(12348,	'Junior',	'Martin',	4444444444,	'PLMIMJ',	'martin@gmail.com'),
(12349,	'Lauren',	'Lee',	5555555555,	'IMWHFI',	'lee@gmail.com'),
(12350,	'Megan',	'Lowe',	6666666666,	'NBNVMO',	'lowe@gmail.com'),
(12351,	'Tracy',	'Adams',	7777777777,	'ZXX456',	'adams@gmail.com'),
(12352,	'Larrisa',	'Rowe',	8888888888,	'BNN234','rowe@gmail.com'),
(12353,	'Tom',	'Lawrence',	9999999999,	'YTHMNB',	'tom@gmail.com'),
(12354,	'Jake',	'Reilly',	1112223333,	'YHNJUM',	'reilly@gmail.com');

INSERT INTO Customer(CustomerID, FirstName, LastName, PhoneNumber, Email, CardNumber) VALUES 
(101,	'Tina',	'Burke',	9878886666,	'burke@gmail.com',	1111111111111111),
(102,	'Dennis',	'Grey',	9386859786, 'grey@gmail.com',	2222222222222222),
(103,	'Charlie',	'Renolds',	1325346576,	'renolds@gmail.com',	3333333333333333),
(104,	'Peter', 'MacDonald',	8378496098,	'petermac@gmail.com',	4444444444444444),
(105,	'Sophia',	'Kelly',	1132240987,	'skelly@gmail.com',	5555555555555555),
(106,	'Harry',	'McAvoy',	4658299934,	'harryav@gmail.com',	6666666666666666),
(107,	'Alex',	'Henderson',	4009896543,	'ahenderson@gmail.com',	7777777777777777),
(108,	'Lisa',	'Kovsky',	1123323344,	'kovskyl@gmail.com',	8888888888888888),
(109,	'Shawn', 	'Spencer',	2232242254,	'sspencer@gmail.com',	9999999999999999),
(110,	'Julie',	'OHara',	9092327788,	'johara@gmail.com',	1111222233334444);

INSERT INTO Trip(TripID, EmployeeId, CustomerID, Price, Distance, LengthAmt, LocationID) VALUES 
(350,	12345,	101,	'18.63',	15,	20, 202),
(351,	12346,	102,	'23.93',	18,	23, 203),
(352,	12347,	103,	'18.53',	14, 28, 204),
(353,	12348,	104,	'37.75',	24,	35, 205),
(354,	12349,	105,	'11.31',	7,	10, 206),
(355,	12350,	106,	'20.53',	12,	15, 207),
(356,	12351,	107,	'8.97',   	4,	8, 208),
(357,	12352,	108,	'17.19',	15,	19, 209),
(358,	12353,	109,	'10.95',	9,	12, 210),
(369,	12354,	110,	'24.84',	18,	24, 211);*/

INSERT INTO LocationAddress(LocationID, StreetAddress, City, StateName, Country, Zipcode) VALUES 
(202,	'442 Washington St',	'Wellesley','MA','US', 02482),
(203,	'87 Map Hill Drive',	'Babson Park',	'MA', 'US', 02457),
(204,	'1 Harborside Dr',	'Boston',	'MA',	'US',	02128),
(205,	'184 Linden Street',	'Wellesley',	'MA',	'US',	02481),
(206,	'800 Boylston St.',	'Boston',	'MA',	'US',	02199),
(207,	'1000 5th Ave',	'New York', 	'NY',	'US',	10028),
(208,	'350 5th Ave',	'New York',	'NY',	'US',	10118),
(209,	'75 Middlesex Turnpike',	'Burlington', 	'MA',	'US', 	01803),
(210,	'31 Harrison Ave.'	,'Boston',	'MA', 	'US',	02111),
(211,	'30 Rockefeller Plaza',	'New York', 	'NY', 	'US',	10112);

/*Adjustment for query 4*/
DELETE FROM Trip
WHERE Price like '24%';
GO 

/*Adjustment for query 4*/
INSERT INTO Trip(TripID, EmployeeId, CustomerID, Price, Distance, LengthAmt, LocationID) VALUES 
(369,	12354,	110, NULL,	18,	24, 211);
