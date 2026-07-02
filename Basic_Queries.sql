-- Display all records
SELECT * FROM Employee;

-- Display employee names
SELECT Name FROM Employee;

-- Display employee names and salary
SELECT Name, Salary FROM Employee;

-- Display unique departments
SELECT DISTINCT Department FROM Employee;

-- Display first 5 records
SELECT * FROM Employee LIMIT 5;

-- Display employees with salary greater than 50000
SELECT * FROM Employee
WHERE Salary > 50000;

-- Display employees from IT department
SELECT * FROM Employee
WHERE Department = 'IT';

-- Display employees ordered by salary
SELECT * FROM Employee
ORDER BY Salary DESC;

-- Count total employees
SELECT COUNT(*) FROM Employee;
