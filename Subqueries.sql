-- =====================================
-- SUBQUERIES
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

-- 1. Find employees whose salary is above average

SELECT Name, Salary
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);

--------------------------------------------------

-- 2. Find employee with highest salary

SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MAX(Salary)
    FROM Employee
);

--------------------------------------------------

-- 3. Find employee with lowest salary

SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MIN(Salary)
    FROM Employee
);

--------------------------------------------------

-- 4. Find employees working in IT department

SELECT *
FROM Employee
WHERE Department =
(
    SELECT Department
    FROM Employee
    WHERE Name='Rahul'
);

--------------------------------------------------

-- 5. Find employees earning more than Karan

SELECT *
FROM Employee
WHERE Salary >
(
    SELECT Salary
    FROM Employee
    WHERE Name='Karan'
);
