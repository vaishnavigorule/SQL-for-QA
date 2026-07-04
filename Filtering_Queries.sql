-- Display employees from the IT department
SELECT * FROM Employee
WHERE Department = 'IT';

-- Employees with salary greater than 50000
SELECT * FROM Employee
WHERE Salary > 50000;

-- Employees with salary between 30000 and 60000
SELECT * FROM Employee
WHERE Salary BETWEEN 30000 AND 60000;

-- Employees from HR or IT
SELECT * FROM Employee
WHERE Department IN ('HR', 'IT');

-- Employees whose name starts with 'A'
SELECT * FROM Employee
WHERE Name LIKE 'A%';

-- Employees whose name ends with 'n'
SELECT * FROM Employee
WHERE Name LIKE '%n';

-- Employees whose email contains 'gmail'
SELECT * FROM Employee
WHERE Email LIKE '%gmail%';

-- Employees with NULL phone number
SELECT * FROM Employee
WHERE Phone IS NULL;
