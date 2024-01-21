--CREATING A TABLE
CREATE TABLE EmployeeDemographics
(
    EmployeeID int,
    FirstName varchar(50),
    LastName varchar(50),
    Age int,
    Gender varchar(50)
)

CREATE TABLE EmployeeSalary
(
    EmployeeID int,
    JobTitle varchar(50),
    Salary int
)

--INSERT DATA
INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim' , 'Halpert', 35, 'Male'),
(1002, 'Sheldon', 'Cooper', 36, 'Male'),
(1003, 'Rajesh', 'Koothrappalli', 37, 'Male'),
(1004, 'Pam', 'Weasley', 34, 'Female'),
(1005, 'Dwight', 'Schrute', 28, 'Male'),
(1006, 'Micheal', 'Scott', 42, 'Male'),
(1007, 'Heath', 'Ledger', 50, 'Male'),
(1008, 'The', 'Batman', 20, 'Male'),
(1010, 'The', 'Superman',25, 'Male')

INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 100000)
(1002, 'Salesman', 100000),
(1003, 'Salesman', 200000),
(1004, 'Salesman', 300000),
(1005, 'Salesman', 400000),
(1006, 'Salesman', 500000),
(1007, 'Salesman', 600000),
(1008, 'Salesman', 700000),
(1010, 'Salesman', 800000)

--Display the table
SELECT *FROM --The Entire Table)
SELECT FirstName, LastName --Only the specified columns
SELECT TOP 5 * -- The top 5 rows
SELECT DISTINCT(Gender) --only the distinct ones in the Gender
SELECT COUNT(Gender) -- counts the number of rows that has gender specified
SELECT COUNT(LastName) AS LastNameCount -- displays the table with column name as LastNameCount
SELECT MAX(Salary) , MIN(Salary), AVG(Salary) -- counts the max, min and avg in the salary column

--WHERE Statement
-- =, <= , >= , AND, OR, LIKE, NULL, NOT NULL, IN

-- '='
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

-- '<=' , AND
SELECT *
FROM EmployeeDemographics
WHERE Age <=30 AND Gender = 'Male'

-- '<=' , OR
SELECT *
FROM EmployeeDemographics
WHERE Age <=30 OR Gender = 'Male'

-- LIKE
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'  -- LastName starts with S

-- LIKE
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%' -- Starts with S and has O in the LastName
--This particular S o would be in order for

-- IN
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim' , 'Pam')

-- NULL
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NULL