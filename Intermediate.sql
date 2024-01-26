-- Inner, Full/Left/Right/Outer JOINS

-- INNER JOIN

SELECT *
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Full Outer Join
-- For Unknown values it prints as NULL, it displays everything in both tables (A union B)
SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

