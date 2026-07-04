-- =====================================
-- SQL VIEWS
-- =====================================

-- Create Employee Table

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employee VALUES
(1,'Rahul','IT',50000),
(2,'Priya','HR',60000),
(3,'Amit','IT',45000),
(4,'Neha','Finance',70000),
(5,'Karan','Marketing',40000);

--------------------------------------------------

-- Create a View

CREATE VIEW Employee_Details AS
SELECT EmpID, Name, Department
FROM Employee;

--------------------------------------------------

-- Display View

SELECT * FROM Employee_Details;

--------------------------------------------------

-- View Employees from IT Department

CREATE VIEW IT_Employees AS
SELECT Name, Salary
FROM Employee
WHERE Department='IT';

SELECT * FROM IT_Employees;

--------------------------------------------------

-- Drop View

DROP VIEW IF EXISTS IT_Employees;
