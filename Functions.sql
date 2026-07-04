-- =====================================
-- SQL FUNCTIONS
-- =====================================

-- Create Employee Table

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

INSERT INTO Employee VALUES
(1,'Rahul','IT',50000,'2023-01-15'),
(2,'Priya','HR',60000,'2022-08-20'),
(3,'Amit','IT',45000,'2024-02-10'),
(4,'Neha','Finance',70000,'2021-11-05'),
(5,'Karan','Marketing',40000,'2023-06-25');

-- =====================================
-- STRING FUNCTIONS
-- =====================================

-- Convert to Uppercase
SELECT UPPER(Name) AS Employee_Name
FROM Employee;

-- Convert to Lowercase
SELECT LOWER(Name) AS Employee_Name
FROM Employee;

-- Length of Name
SELECT Name, LENGTH(Name) AS Name_Length
FROM Employee;

-- Concatenate Name and Department
SELECT CONCAT(Name, ' - ', Department) AS Employee_Details
FROM Employee;

-- =====================================
-- NUMERIC FUNCTIONS
-- =====================================

-- Round Salary
SELECT ROUND(Salary) AS Rounded_Salary
FROM Employee;

-- Maximum Salary
SELECT MAX(Salary) AS Highest_Salary
FROM Employee;

-- Minimum Salary
SELECT MIN(Salary) AS Lowest_Salary
FROM Employee;

-- Average Salary
SELECT AVG(Salary) AS Average_Salary
FROM Employee;

-- Sum of Salaries
SELECT SUM(Salary) AS Total_Salary
FROM Employee;

-- =====================================
-- DATE FUNCTIONS
-- =====================================

-- Current Date
SELECT CURDATE();

-- Current Date & Time
SELECT NOW();

-- Extract Year
SELECT YEAR(JoiningDate) AS Joining_Year
FROM Employee;

-- Difference in Days
SELECT DATEDIFF(CURDATE(), JoiningDate) AS Days_Worked
FROM Employee;
