CREATE TABLE [Categories] (
  [CategoryID] INT NOT NULL	,
  [CategoryName] VARCHAR(50),
  [BookID] INT NOT NULL,
  PRIMARY KEY ([CategoryID])
);

CREATE INDEX [PK ] ON  [Categories] ([CategoryID]);

CREATE INDEX [FK] ON  [Categories] ([BookID]);


CREATE TABLE [Students] (
  [StudentID] INT NOT NULL,
  [StudentFirstName] VARCHAR(50),
  [StudentSurName] VARCHAR(50),
  [PhoneNO] INT NOT NULL,
  [Address] VARCHAR(50),
  PRIMARY KEY ([StudentID])
);

CREATE TABLE [Publishers] (
  [PublisherID] INT NOT NULL,
  [Publisher FirstName] VARCHAR(50),
  [Publisher LastName] VARCHAR(50),
  [Address] VARCHAR(50),
  [PhoneNO] INT NOT NULL,
  [Nationality] VARCHAR(50),
  [AuthorID] INT NOT NULL,
  PRIMARY KEY ([PublisherID])
);

CREATE INDEX [ ] ON  [Publishers] ([Publisher FirstName]);

CREATE INDEX [FK] ON  [Publishers] ([AuthorID]);

CREATE TABLE [Author] (
  [AuthorID] INT NOT NULL	,
  [FirstName] VARCHAR(50),
  [SurName] VARCHAR(50),
  [PhoneNO] INT NOT NULL,
  [CategoryID] INT NOT NULL,
  PRIMARY KEY ([AuthorID])
);

CREATE INDEX [FK] ON  [Author] ([CategoryID]);

CREATE TABLE [BookS] (
  [BookID] INT NOT NULL,
  [Title] VARCHAR(50),
  [Date of Publish] VARCHAR(50),
  [Price] INT NOT NULL,
  [Type] VARCHAR(50),
  PRIMARY KEY ([BookID])
);


1. How to calculate average price of books?
SELECT AVG(Price) AS AveragePrice 
FROM Book;
2. how to get maxmim price?
SELECT MAX(Price) AS LargestPrice 
FROM Book;
3.how to get minmam price?
SELECT MIN(Price) AS SmallestPrice 
FROM Book;
4.how to count the books?
SELECT COUNT(BookID) AS NumberOfProducts 
FROM Book;
5.how to calculte total price of Books?
SELECT SUM(price) AS TotalItemsOrdered 
FROM Books;
6.how to check Books is null or not?
SELECT ISNULL(NULL, 'Books');
7.how to get data base user name?
SELECT USER_NAME();
8.Tests whether the expression is numeric or not?
SELECT ISNUMERIC(BookID);
9.how Replaces a substring within a string, with another substring, a specified number of times?
SELECT Replace("My name is Willy Wonka", "i", "a") AS ReplaceString;
10.how to know student first name?
SELECT StudentFirstName, Date() AS CurrentDate
FROM Customers;
11.how to get student name in lower case?
SELECT LCASE(StudentFirstName) AS LowercaseStudentFirstName
FROM Students;
12.how to get current data ?
SELECT studentFirstName, Now() AS CurrentDateTime FROM Students;
13. is not null?
SELECT Title, BookID, DataOfPublisher FROM Books;
WHERE Price IS NOT NULL;
14.how to copy data form table to another one?
SELECT * INTO StudentBackup 
FROM Students;
15.can I copy only a few columns into a new table
SELECT PublisherID, PublisherNO INTO PublisherBackup2017
FROM Publisher;
16.how to get names length?
SELECT LENGTH(StuhentFirstName) AS LengthOfString;
17.how to search in item location?
SELECT LOCATE("item", "item location") AS MatchPosition;
18.how to Search for "a" in CustomerName column, and return position?
SELECT LOCATE("a", StudentFirstName)
FROM Customers;
19.Remove trailing spaces from a string?
SELECT RTRIM("SQL Tutorial     ")  AS RightTrimmedString;
20.how to Compare two strings?
SELECT STRCMP("S Q 8L Tutorial", "SQL Tutorial")



				select statments

-- 6 insert statment

INSERT INTO Students VALUES(1,'Lotfy ','shawky',0122222,ALEX);
INSERT INTO Students VALUES(2,'Saad','fathy',0111111,CAIRO);
INSERT INTO Students VALUES(3,'Tarek','omar',01555555,ALEX);
INSERT INTO Author VALUES(1,'william','shakspeer',03433333,ALEX);
INSERT INTO Author VALUES(1,'Ahmed','sharaawy',034444,CAIRO);






-- 3 select using subquery


SELECT * 
   FROM Students 
   WHERE StudentID IN (SELECT StudentID
         FROM Students 
         WHERE StudentID = 1) ;

SELECT * 
   FROM Author 
   WHERE AuthorID IN (SELECT AuthorID
         FROM Author 
         WHERE AuthorID = 1) ;

SELECT * 
   FROM Students 
   WHERE StudentFirstName IN (SELECT StudentFirstName
         FROM Students 
         WHERE StudentFirstName = 'Lotfy') ;







-- 2 select statments using count and group functions

SELECT StudenytFirstName, COUNT(*)  'count'
FROM Students 
GROUP BY StudentFirstName;

SELECT Address, COUNT(*) 'count'
FROM Publisher 
GROUP BY Address;






-- 5 update statments

UPDATE Students
SET StudentFirstName = 'Ibrahem'
WHERE StudentID = 1;

UPDATE Students
SET StudentFirstName = 'said'
WHERE StudentID = 2;

UPDATE Students
SET StudentFirstName = 'salman'
WHERE StudentID = 3;

UPDATE Author
SET Firstname = 'Naguib'
WHERE AuthorID = 1;

UPDATE Author
SET Surname = 'Mafouz' 
WHERE AuthorID = 2;



-- 5 select statements using different joins

SELECT Students.StudentID, Students.StudentFirstName
FROM Students
INNER JOIN Book ON Students.StudentID=Students.StudentID;

SELECT Students.StudentID, Students.StudentFirstName
FROM Students
LEFT JOIN Book ON Students.StudentID=Students.StudentID;

SELECT Students.StudentID, Students.StudentFirstName
FROM Students
RIGHT JOIN Book ON Students.StudentID=Students.StudentID;

SELECT Students.StudentID, Students.StudentFirstName
FROM Students
FULL JOIN Book ON Students.StudentID=Students.StudentID;

SELECT Author.AuthorID, Author.AuthorID
FROM Author
INNER JOIN Students ON Author.AuthorID=Author.AuthorID;



-- 5 delete statments

DELETE FROM Students WHERE StudentID= 1;
DELETE FROM Students WHERE StudentID= 2;
DELETE FROM Students WHERE StudentID= 3;
DELETE FROM Author WHERE AuthorID= 1;
DELETE FROM Author WHERE AuthorID= 1;
